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
import tkinter as tk
from tkinter import filedialog
from tkinter import messagebox




# %%


# Extract the signal addresses from the Excel file
def get_signal_addresses(excel_file: str, signal_addresses_sheet: str) -> pd.DataFrame:
    signal_addresses_tab = pd.read_excel(
        excel_file, sheet_name=signal_addresses_sheet, header=None)
    # Extract the signal addresses from the second column
    signal_addresses = signal_addresses_tab.iloc[1:, 1:2].values.flatten()
    # Extract the group types from the third column
    group_types = signal_addresses_tab.iloc[1:, 2:3].values.flatten()
    
    # Create an empty dict to assign pairs of group type and signal adresses
    group_type_dict = {}
    # Group up the signal adresses and group types
    for key, value in zip(group_types, signal_addresses):
        # If the group type is already in the new dictionary add the corresponding value to it
        if key.upper() in group_type_dict:
            group_type_dict[key.upper()].append(value)
        # If they key is not in the dictionary already add it as a new key with the corresponding value
        else:
            group_type_dict[key.upper()] = [value]
    return signal_addresses, group_type_dict

# By knowing the DUT has CILO and EnaCls the address it is possible to determine it


def determine_DUT(group_type_dict: dict) -> str:

    dut = next(value for key, value in group_type_dict.items() if 'ASSES' in key)[0]
    # Split the address into parts (split on '.'). Discard the rest
    # For example AA1D1Q05A1CTRL/SXSWI4.Pos.stVal would be split into three
    # and Pos and StVal would be discarded, while the first part is kept.
    dut = re.split(r'[.]', dut)[0] 

    return dut


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
    for ied in root.findall('.//scl:IED', namespaces):
        ied_name = ied.get('name')
        ieds.append(ied_name)

    # Iterate through the IEDs and determine if the IED name is contained in the DUT name
    parent = next((ied for ied in ieds if ied in DUT))
    return parent, ieds


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

def get_test_steps(excel_file: str, test_steps_sheet: str) -> pd.DataFrame:
    """Read out the test steps from the Excel file."""
    test_steps = pd.read_excel(
        excel_file, sheet_name=test_steps_sheet, header=None)
    return test_steps


def get_switch_positions(test_steps) -> Tuple[pd.DataFrame, int]:
    """Skip first two rows to get rid of numbering and assessments, skip last row to get rid of commands.
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


def setup_intial_step(assessment_row, bay1_cb_states, bay5_cb_states, command_row):
    # Prepend the test with an initial step where everything is opened
    list(assessment_row).insert(0, True)
    list(bay1_cb_states).insert(0, "POS_OFF")
    list(bay5_cb_states).insert(0, "POS_OFF")
    command_row.insert(0, "CAR_NO_OPERATION")
    return assessment_row, bay1_cb_states, bay5_cb_states, command_row


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
        cb_closing = (bay1_cb_states[step] == "POS_ON") & (
            bay1_cb_states[step-1] == "POS_OFF")
        cb_opening = (bay1_cb_states[step] == "POS_OFF") & (
            bay1_cb_states[step-1] == "POS_ON")
        cb_unchanged = bay1_cb_states[step] == bay1_cb_states[step-1]

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
        elif cb_closing:
            print(f'{step} CLOSING')
            # the switching signals and the LNs are sorted appropriately
            LNs_signals_closing = sort_switch_order(LNs_signal, 'closing')
            # The dictionary is "transposed" to get the all expected values for the current step for the different LNs
            closing_vals = get_expected_vals(LNs_signals_closing)

            # First step can follow the order of the Excel test file, as changes between two steps can't be defined here
            ilo_FAT['testCases'][0]['testSteps'].append({"description": "",
                                                         "ordered": (False if step <= 0 else True),
                                                         "expected": [{"signalRef": ln, "value": closing_vals[step][j]} if j != len(signal_addresses)-1
                                                                      else {"signalRef": ln, "commandResult": closing_vals[step][j]}
                                                                      for j, ln in enumerate(LNs_signals_closing)]})

        # If the circuit breaker is opening, the order of the switching operations, should ensure that the circuit breaker opens before the disconnectors
        elif cb_opening:
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


# Create a GUI window


class FileBrowserApp:
    def __init__(self, root):
        self.root = root
        self.root.title("File Browser")

        self.excel_file_path = tk.StringVar()
        self.xml_file_path = tk.StringVar()
        self.input_string = tk.StringVar()

        # Excel File Browser
        self.excel_label = tk.Label(root, text="Select Excel File:")
        self.excel_label.pack()
        self.excel_entry = tk.Entry(root, textvariable=self.excel_file_path, width=50)
        self.excel_entry.pack()
        self.excel_button = tk.Button(root, text="Browse", command=self.browse_excel_file)
        self.excel_button.pack()

        # XML File Browser
        self.xml_label = tk.Label(root, text="Select SCD File:")
        self.xml_label.pack()
        self.xml_entry = tk.Entry(root, textvariable=self.xml_file_path, width=50)
        self.xml_entry.pack()
        self.xml_button = tk.Button(root, text="Browse", command=self.browse_xml_file)
        self.xml_button.pack()

        # Input String
        self.string_label = tk.Label(root, text="Enter a name for the JSON output file:")
        self.string_label.pack()
        self.string_entry = tk.Entry(root, textvariable=self.input_string, width=50)
        self.string_entry.pack()

        # Continue Button
        self.continue_button = tk.Button(root, text="Continue", command=self.continue_execution)
        self.continue_button.pack()

    def browse_excel_file(self):
        file_path = filedialog.askopenfilename(filetypes=[("Excel files", "*.xlsx *.xls")])
        self.excel_file_path.set(file_path)

    def browse_xml_file(self):
        file_path = filedialog.askopenfilename(filetypes=[("SCD files", "*.scd")])
        self.xml_file_path.set(file_path)

    def continue_execution(self):
        if not self.excel_file_path.get():
            messagebox.showerror("Error", "Please select an Excel file.")
            return
        if not self.xml_file_path.get():
            messagebox.showerror("Error", "Please select an SCD file.")
            return
        if not self.input_string.get():
            messagebox.showerror("Error", "Please enter a string.")
            return

        # Store the values in instance variables for later use
        self.excel_file = self.excel_file_path.get()
        self.xml_file = self.xml_file_path.get()
        self.input_str = self.input_string.get()

        # Inform the user that the files and input string have been captured
        # messagebox.showinfo("Info", f"Excel file: {self.excel_file}\nXML file: {self.xml_file}\nString: {self.input_str}")

        # Close the GUI window
        self.root.quit()


root = tk.Tk()
app = FileBrowserApp(root)
root.mainloop()

# Access the file paths and input string after the GUI interaction
test_sequence_file = app.excel_file
scd_file = app.xml_file
json_output_file = app.input_str

# Use the files and input string in your code
print(f"Excel file: {test_sequence_file}")
print(f"XML file: {scd_file}")
print(f"Input string: {json_output_file}")


signal_addresses, group_type_dict = get_signal_addresses(
    excel_file=test_sequence_file, signal_addresses_sheet="Signal Addresses")

dut = determine_DUT(group_type_dict)



root = get_root(scd_file)
namespaces = get_namespaces(scd_file)

# parent, ieds = get_parent(root, namespaces, dut)

# compare the list of ieds from the SCD file with the list of ieds
# from the signal addresses and extract only the ones used.
# bay_ieds = [ied for ied in ieds if any(
#     ied in signal for signal in signal_addresses)]

signal_addresses = sort_signal_adresses(signal_addresses, dut)

# group_types = create_group_types(signal_addresses, dut, test_mode=False)

test_steps = get_test_steps(
    excel_file=test_sequence_file, test_steps_sheet="Test Steps")
switch_positions, num_test_steps = get_switch_positions(test_steps)

# Get the value from the second row, from column two onwards
assessment_row = test_steps.iloc[1, 2:].values.flatten()
# Add initial step where everything is opened (assessment is True)
assessment_row = np.insert(assessment_row, 0, True)

# Change index to match the group

switch_positions.index = group_type_dict["CONTROL"]

switch_positions.replace("CLOSED", "POS_ON", inplace=True, regex=True)
switch_positions.replace("OPEN", "POS_OFF", inplace=True, regex=True)
# Add initial step where everything is opened
switch_positions.insert(0, 0, "POS_OFF")

# The circuit breakers have the signal addresses that contain either QA+any digit or XCBR
circuit_breakers = [x for x in switch_positions.index if re.match(r"QA\d", x) or ("XCBR" in x)]

# Get the states of the circuit breakers
bay1_cb_states = switch_positions.loc[circuit_breakers[0]].values.flatten()
bay5_cb_states = switch_positions.loc[circuit_breakers[-1]].values.flatten()

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

# Run the function to create the JSON file
json_structure = create_FAT_json(version=1.1, test_name=json_output_file,
                                 dut_name="AA1D1Q05A1", group_types=group_type_dict)

# Json export
with open(json_output_file+".json", "w") as file:
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
validate_json(json_output_file+".json", test_case_schema)

# %%
