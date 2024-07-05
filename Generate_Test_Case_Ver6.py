# %%
import json
import numpy as np
import pandas as pd
from tabulate import tabulate
from typing import Tuple
import re
import jsonschema
from typing import Union
import xml.etree.ElementTree as ET



# %%


# Extract the signal addresses from the Excel file from the correct columns
def get_signal_addresses(excel_file: str, signal_addresses_sheet: str) -> pd.DataFrame:
    signal_addresses_tab = pd.read_excel(
        excel_file, sheet_name=signal_addresses_sheet, header=None)
    signal_addresses = signal_addresses_tab.iloc[1:, 1:2].values.flatten()
    return signal_addresses

# By knowing the DUT has CILO and EnaCls the address it is possible to determine it


def determine_DUT(signal_addresses: list, test_mode: bool) -> str:
    # Regex search for CILO, random number and EnaCls as it is specific to DUT
    # Find the signal that contains "CILO"
    if not test_mode:
        pattern = r"(CILO)"
        for address in signal_addresses:  # Iterate through all addresses

            match = re.search(pattern, address)  # Search for the pattern
            if match:  # If a match is found, return the address up to the match and subtract one to remove the slash
                return address[:match.start()-1]
    elif test_mode:
        # For last lab test, one device was to control both itself and the other
        # in a regular test, this would not be necessary
        return "Q05CTRL/SXSWI4"
    return "No CILO LN found in signal addresses."


def get_root(SCD: str) -> str:
    tree = ET.parse(SCD)
    root = tree.getroot()
    return root


def get_namespaces(file_path):
    namespaces = {}
    for _, elem in ET.iterparse(file_path, events=('start-ns',)):

        ns, uri = elem  # Unpack the tuple of prefix and URI
        namespaces[ns] = uri

    # Find the first prefix (this is the one using for conducting equipment etc.)
    first_prefix = next(iter(namespaces))
    # make sure first namespace has a known prefix (scl)
    new_namespaces = {'scl': namespaces.pop(first_prefix)}
    # Add the other namespaces to the dictionary
    new_namespaces.update(namespaces)
    return new_namespaces


def get_parent(root, namespaces, DUT) -> Union[str, list]:
    ieds = []
    scd_addresses = []
    for ied in root.findall('.//scl:IED', namespaces):
        ied_name = ied.get('name')
        ieds.append(ied_name)

    for lnode in root.findall('.//scl:LNode', namespaces):
        ied_name = lnode.get('iedName')
        # ieds.add(ied_name)
        ld_inst = lnode.get('ldInst')
        ln_class = lnode.get('lnClass')
        ln_inst = lnode.get('lnInst')
        scd_addresses.append(fr"{ied_name}{ld_inst}/{ln_class}{ln_inst}")


    # Iterate through the IEDs and determine if the IED name is contained in the DUT name
    parent = next((ied for ied in ieds if ied in DUT))
    return parent, ieds, scd_addresses


def sort_signal_adresses(signal_addresses, dut) -> list:
    # Sort elements in list based on whether DUT is in the address
    # False < True in python, so dut will appear last as they will return true
    dut_last = sorted(signal_addresses, key=lambda address: dut in address)
    # get the index of the CILO LN in the list
    index = [idx for idx, s in enumerate(dut_last) if 'CILO' in s][0]

    # Remove CILO from list and reinsert at second-to-last position, to fit with the JSON
    dut_last.insert(-1, dut_last.pop(index))
    sorted_addresses = dut_last
    return sorted_addresses


def create_group_types(signal_addresses: list, DUT: str, test_mode: bool) -> dict:
    # Generate the dict, that is found in the SignalGroups of the JSON
    if not test_mode:
        group_types = {
            # The controlled elements are all elements that are not the DUT
            "CONTROL": [address for address in signal_addresses if DUT not in address],
            # CILO is the assessment
            "ASSESS": [address for address in signal_addresses if DUT in address and "CILO" in address],
            # The DUT SWI is the command
            "COMMAND": [address for address in signal_addresses if DUT in address and "CSWI" in address]
        }
    elif test_mode:
        # In the last lab test made, Q05 was controlling Q01 and itself, so the usual sorting could not be used
        group_types = {
            "CONTROL": [address for address in signal_addresses if "CILO" not in address and "Q05CTRL/SXSWI4.Pos.stVal" not in address],
            "ASSESS": ["Q01CTRL/SCILO1.EnaCls.stVal"],
            "COMMAND": ["Q05CTRL/SXSWI4.Pos.stVal"]
        }
    return group_types


def get_test_steps(excel_file: str, test_steps_sheet: str) -> pd.DataFrame:
    """Read out the test steps from the Excel file."""
    test_steps = pd.read_excel(
        excel_file, sheet_name=test_steps_sheet, header=None)
    return test_steps


def get_switch_positions(test_steps) -> Tuple[pd.DataFrame, int]:
    """Skip first two rows of Excel sequence to get rid of numbering and assessments, skip last row to get rid of commands.
    Select from column 2 onwards to only get positions"""
    switch_positions = test_steps.iloc[2:-1, 2:]

    # Plus one to allow for an initial step, where everything is opened
    num_test_steps = len(switch_positions.columns)+1
    return switch_positions, num_test_steps


def sort_switch_order(LNs_signal_dict: dict, cb_direction: str) -> dict:
    """Sort the dictionary based on the direction of the circuit breaker."""
    key = list(LNs_signal_dict.keys()
               )  # Get out keys (addresses) from the dictionary

    # If cb is opening between steps
    if cb_direction == ('opening' or 'opening'.upper()):

        # Sort the keys, excluding the last two. Here if XSWI is in the key it will be sorted last
        # as true=1 and false=0
        sorted_keys = sorted(key[:-2], key=lambda x: ('XSWI' in x, x))

    elif cb_direction == ('closing' or 'closing'.upper()):
        # This sorting will put CB last
        sorted_keys = sorted(key[:-2], key=lambda x: ('XSWI' not in x, x))
    # Add the last two keys to the sorted keys
    sorted_keys += key[-2:]

    # Return a new dictionary with the sorted keys
    new_dict = {key: LNs_signal_dict[key] for key in sorted_keys}
    return new_dict


def get_expected_vals(LNs_signal_dict: dict) -> dict:
    """Get the expected values for the different LNs in the dictionary in each step."""
    return {i: [LNs_signal_dict[k][i] for k in LNs_signal_dict.keys()] for i in range(num_test_steps)}


def setup_initial_step(assessment_row, cb_states, command_row):
    # Prepend the test with an initial step where everything is opened
    assessment_row.insert(0, True)
    command_row.insert(0, "CAR_NO_OPERATION")
    for key in cb_states:
        cb_states[key].insert(0, "POS_OFF")
    return assessment_row, cb_states, command_row


def create_FAT_json(version: float, test_name: str, dut_name: str, group_types: dict) -> dict:
    """Create JSON Structure"""
    # Create version
    ilo_FAT = {"version": str(version), "testCases": []}

    # Create parameters for test
    ilo_FAT['testCases'].append({"name": str(test_name),
    "autoSetControlValues": True,
    "autoAssess": True,
    "assessmentLockoutTime": 1.5,
    "autoAssessTimeout": 1.5,
    "switchOperationTime": 1.5,
    "parent": str(dut_name),
    "signalGroups": [],
    "testSteps": []
    })

    # Create CONTROL, ASSESS and COMMAND signal groups and associated LNs
    for key, value in group_types.items():
        ilo_FAT['testCases'][0]['signalGroups'].append(
            {"groupType": key, "signalRefs": value})

    # Create test steps
    # As everything in the JSON have now been filled out except the testSteps, we can now fill out the those
    
    for step in range(num_test_steps):
        # Define scenarios, which affect the order of operations
        cb_closing = {}
        cb_opening = {}
        cb_unchanged = all(cb_states[cb][step] == cb_states[cb][step-1] for cb in circuit_breakers)
        for cb in circuit_breakers:
            cb_closing[cb] = (cb_states[cb][step] == "POS_ON") & (cb_states[cb][step-1] == "POS_OFF")
            cb_opening[cb] = (cb_states[cb][step] == "POS_OFF") & (cb_states[cb][step-1] == "POS_ON")
            
        # In the first step, order is not important, as there is no previous step
        if step == 0:
            step0_vals = get_expected_vals(LNs_signal)

            # We are appending the data to the testSteps list in the JSON. Description stays empty.
            # Everything is ordered, except for the first step
            # The expected values are added to the JSON. The last value is a commandResult, the second to last is the assessment
            ilo_FAT['testCases'][0]['testSteps'].append({"description": "",
            "ordered": (False if step <= 0 else True),
            "expected": [{"signalRef": ln, "value": step0_vals[step][j]} if j != len(signal_addresses)-1
            else {"signalRef": ln, "commandResult": step0_vals[step][j]}
            for j, ln in enumerate(signal_addresses)]})

        # If the circuit breaker is closing, the order of the switching operations, should ensure that disconnectors close before the circuit breaker
        elif any(cb_closing.values()):
            print(f'{step} CLOSING')
            # the switching signals and the LNs are sorted appropriately
            LNs_signals_closing = sort_switch_order(LNs_signal, 'closing')
            # The dictionary is "transposed" to get all expected values for the current step for the different LNs
            closing_vals = get_expected_vals(LNs_signals_closing)

            # First step can follow the order of the Excel test file, as changes between two steps can't be defined here
            ilo_FAT['testCases'][0]['testSteps'].append({"description": "",
            "ordered": (False if step <= 0 else True),
            "expected": [{"signalRef": ln, "value": closing_vals[step][j]} if j != len(signal_addresses)-1
            else {"signalRef": ln, "commandResult": closing_vals[step][j]}
            for j, ln in enumerate(LNs_signals_closing)]})

        # If the circuit breaker is opening, the order of the switching operations, should ensure that the circuit breaker opens before the disconnectors
        elif any(cb_opening.values()):
            print(f'{step} OPENING')
            LNs_signals_opening = sort_switch_order(LNs_signal, 'opening')
            opening_vals = get_expected_vals(LNs_signals_opening)

            # First step can follow the order of the Excel test file, as changes between two steps can't be defined here
            ilo_FAT['testCases'][0]['testSteps'].append({"description": "",
                                                        "ordered": (False if step <= 0 else True),
                                                        "expected": [{"signalRef": ln, "value": opening_vals[step][j]} if j != len(signal_addresses)-1
                                                                    else {"signalRef": ln, "commandResult": opening_vals[step][j]}
                                                                    for j, ln in enumerate(LNs_signals_opening)]})

        elif cb_unchanged:
            print(f'{step} UNCHANGED')
            # If CB states do not change, keep the order.
            ilo_FAT['testCases'][0]['testSteps'].append({"description": "",
                                                        "ordered": (False if step <= 0 else True),
                                                        "expected": [{"signalRef": ln, "value": step0_vals[step][j]} if j != len(signal_addresses)-1
                                                                    else {"signalRef": ln, "commandResult": step0_vals[step][j]}
                                                                    for j, ln in enumerate(signal_addresses)]})

        else:
            raise ValueError("Something went wrong with the CB states")

    return ilo_FAT


test_sequence_file = "7-Interlocking Q01_QB1 Close.xlsx"
# test_sequence_file = "Expanded_test.xlsx"

signal_addresses = get_signal_addresses(
    excel_file=test_sequence_file, signal_addresses_sheet="Signal Addresses")

dut = determine_DUT(signal_addresses, test_mode=False)

scd_file = "5.1-20230131_NUCBX1.scd"

root = get_root(scd_file)
namespaces = get_namespaces(scd_file)
parent, ieds, scd_addresses = get_parent(root, namespaces, dut)

# compare the list of ieds from the SCD file with the list of ieds
# from the signal addresses and extract only the ones used.
# bay_ieds = [ied for ied in ieds if any(
#     ied in signal for signal in signal_addresses)]


signal_addresses = sort_signal_adresses(signal_addresses, dut)

# Check if all signal addresses are contained in the list of scd addresses
signal_addresses_check = [signal_address.split(".")[0] for signal_address in signal_addresses]

if all(signal_address in scd_addresses for signal_address in signal_addresses_check):
    print("All signal addresses are contained in the SCD")
else:
    raise Exception("Not all signal addresses are contained in the SCD")

group_types = create_group_types(signal_addresses, dut, test_mode=False)

test_steps = get_test_steps(
    excel_file=test_sequence_file, test_steps_sheet="Test Steps")

switch_positions, num_test_steps = get_switch_positions(test_steps)

# Get the value from the second row, from column two onwards
assessment_row = test_steps.iloc[1, 2:].values.flatten()
# Add initial step where everything is opened (assessment is True)
assessment_row = np.insert(assessment_row, 0, True)

# Change index to match the group
switch_positions.index = group_types["CONTROL"]

# If Excel file containing test steps says OPEN or CLOSED change it to POS_ON/POS_OFF
switch_positions.replace("CLOSED", "POS_ON", inplace=True, regex=True)
switch_positions.replace("closed", "POS_ON", inplace=True, regex=True)
switch_positions.replace("OPEN", "POS_OFF", inplace=True, regex=True)
switch_positions.replace("open", "POS_OFF", inplace=True, regex=True)
# Add initial step where everything is opened
switch_positions.insert(0, 0, "POS_OFF")

# The circuit breakers have the signal addresses that contain either QA+any digit or XCBR
circuit_breakers = [x for x in switch_positions.index if re.search(r"QA\d", x) or ("XCBR" in x)]

cb_states = {}
for cb in circuit_breakers:
    cb_states[cb] = switch_positions.loc[cb].values.flatten()



# This command check is only needed twice. Once for a false output and once on a true output.
# These would be "CAR_BLOCKED_BY_INTERLOCKING" and "CAR_POSITION_CHANGED".
# Find first true and first false assessment
assessment_idxs: list = [np.where(assessment_row == True)[
    0][0], np.where(assessment_row == False)[0][0]]

# Intialise array with "inactive" command, to only fill up the two necessary ones
# make a list full of "CAR_NO_OPERATION" the same length as number of test steps
command_row = ["CAR_NO_OPERATION"]*num_test_steps
# Two commands needed
changes_command = ["CAR_POSITION_CHANGED", "CAR_BLOCKED_BY_INTERLOCKING"]

# Add the two commands at the first true and first false assessment
for idx, command in zip(assessment_idxs, changes_command):
    command_row[idx] = command

# Convert to np array, to later used for vstack
switch_positions.reset_index(drop=True, inplace=True)
switch_positions = switch_positions.to_numpy()

# Create data structure containing positions, assessments and commands
val_assess_cmd = np.vstack([switch_positions, assessment_row, command_row])

# Create dict where signal addresses and position/assessment/command are paired
LNs_signal = dict(zip(signal_addresses, val_assess_cmd))

# Name of generated JSON file
file_name = "FAT_Q01_QB1_Close_SIGNALADDRESSES"

# Run the function to create the JSON file
json_structure = create_FAT_json(version=1.1, test_name=file_name,
                                 dut_name=parent, group_types=group_types)

# Json export
with open(file_name+".json", "w") as file:
    json.dump(json_structure, file, indent=2)


def validate_json(json_file, schema):
    """JSON validation against scehma. Takes the file and the schema as inputs."""
    # Load the generated JSON
    with open(json_file, "r") as test_file:
        generated_json = json.load(test_file)
        # Validate the generated JSON against the schema
    try:
        jsonschema.validate(generated_json, schema)
        print("JSON is valid.")
    except jsonschema.ValidationError as e:
        print("JSON is invalid.")
        print(e)


test_case_schema = {
    # Most recent json schema specification
    "$schema": "http://json-schema.org/draft/2020-12/schema",
    "type": "object",
    "properties": {
        "version": {
            "type": "string"
        },
        "testCases": {
            "type": "array",
            "items": {
                "type": "object",
                "properties": {
                    "name": {
                        "type": "string"
                    },
                    "autoSetControlValues": {
                        "type": "boolean"
                    },
                    "autoAssess": {
                        "type": "boolean"
                    },
                    "assessmentLockoutTime": {
                        "type": "number"
                    },
                    "autoAssessTimeout": {
                        "type": "number"
                    },
                    "switchOperationTime": {
                        "type": "number"
                    },
                    "parent": {
                        "type": "string"
                    },
                    "signalGroups": {
                        "type": "array",
                        "items": {
                            "type": "object",
                            "properties": {
                                "groupType": {
                                    "type": "string",
                                    "enum": ["CONTROL", "ASSESS", "COMMAND"]
                                },
                                "signalRefs": {
                                    "type": "array",
                                    "items": {
                                        "type": "string"
                                    }
                                }
                            },
                            "required": ["groupType", "signalRefs"]
                        }
                    },
                    "testSteps": {
                        "type": "array",
                        "items": {
                            "type": "object",
                            "properties": {
                                "description": {
                                    "type": "string"
                                },
                                "ordered": {
                                    "type": "boolean"
                                },
                                "expected": {
                                    "type": "array",
                                    "items": {
                                        "type": "object",
                                        "properties": {
                                            "signalRef": {
                                                "type": "string"
                                            },
                                            "value": {
                                                "type": ["string", "boolean"]
                                            },
                                            "commandResult": {
                                                "type": "string"
                                            }
                                        },
                                        "required": ["signalRef"],
                                        "oneOf": [
                                            {
                                                "required": ["value"]
                                            },
                                            {
                                                "required": ["commandResult"]
                                            }
                                        ]
                                    }
                                }
                            },
                            "required": ["ordered", "expected"]
                        }
                    }
                },
                "required": [
                    "name",
                    "autoSetControlValues",
                    "autoAssess",
                    "assessmentLockoutTime",
                    "autoAssessTimeout",
                    "switchOperationTime",
                    "parent",
                    "signalGroups",
                    "testSteps"
                ]
            }
        }
    },
    "required": ["version", "testCases"]
}

# Run the validation function
validate_json(file_name+".json", test_case_schema)

# %%
