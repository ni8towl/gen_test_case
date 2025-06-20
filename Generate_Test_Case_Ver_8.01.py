# %%
from sys import prefix
import numpy as np
import pandas as pd
from tabulate import tabulate
from typing import Tuple
import re
import jsonschema
from typing import Union
import xml.etree.ElementTree as ET
import tkinter as tk
from FileBrowserApp import FileBrowserApp
import subprocess
import sys
import os
import json



# %%
subprocess.run([sys.executable, "Truth_Table_1.6.py"], env=os.environ.copy())
# subprocess.run(["python", "Truth_Table_1.6.py"])

# Extract the signal addresses from the Excel file from the correct columns
def get_signal_addresses(excel_file: str, signal_addresses_sheet: str) -> pd.DataFrame:
    """
    Extracts signal addresses from an Excel sheet.

    Parameters:
        excel_file (str): Path to the Excel file.
        signal_addresses_sheet (str): Name of the sheet containing the signal addresses.

    Returns:
        pd.DataFrame: A DataFrame containing the extracted signal addresses.
    """
    signal_addresses_tab = pd.read_excel(
        excel_file, sheet_name=signal_addresses_sheet, header=None)
    print(signal_addresses_tab.head())  # Display the first few rows of the sheet
    return signal_addresses_tab

# By knowing the DUT has a user defined LN it is possible to determine it
def determine_DUT(signal_addresses: pd.DataFrame) -> tuple:
    """
    Determines the DUT based on the presence of the word 'ASSESS' in column 2
    and slices the adjacent cell value in column 1 to extract the DUT.

    Parameters:
        signal_addresses (pd.DataFrame): DataFrame containing signal addresses.

    Returns:
        tuple: The DUT address and the adjacent cell value, or an appropriate message.
    """
    # Iterate through rows to find 'ASSESS' in column 2
    for index, row in signal_addresses.iterrows():
        column_2_value = str(row[2]).strip() if not pd.isna(row[2]) else ""  # Column "C"
        if column_2_value == "ASSESS":
            adjacent_cell_value = str(row[1]).strip() if not pd.isna(row[1]) else ""  # Column "B"
            # Extract DUT by slicing up to the first '/' in the adjacent cell value
            if '/' in adjacent_cell_value:
                dut = adjacent_cell_value.split('/')[0]  # Extract DUT before the '/'
                print(f"Row {index + 1}: Found DUT '{dut}' from adjacent cell '{adjacent_cell_value}'")
                return dut, adjacent_cell_value

    # After iterating through all rows, return "not found" result if no match
    print("No DUT found in signal addresses.")
    return "No DUT found in signal addresses.", ""

def get_root(SCD: str) -> str:
    """
    Parses an XML file (SCD) and retrieves the root element.

    Parameters:
        SCD (str): Path to the XML file.

    Returns:
        ET.Element: The root element of the XML document.
    """
    try:
        print(f"Attempting to parse the file: {SCD}")
        tree = ET.parse(SCD)
        print("XML file parsed successfully.")

        root = tree.getroot()
        print(f"Root tag: {root.tag}")

        # Optionally print a snippet of the root element's structure
        print("Root element's attributes:", root.attrib)
        print("First-level child tags:", [child.tag for child in root])

        return root
    except FileNotFoundError:
        print(f"Error: File not found: {SCD}")
        raise
    except ET.ParseError as e:
        print(f"Error parsing the XML file: {SCD}. {e}")
        raise

def get_namespaces(file_path):
    """
    Extracts namespaces from an XML file.

    Parameters:
        file_path (str): Path to the XML file.

    Returns:
        dict: A dictionary mapping namespace prefixes to URIs, with the default namespace assigned 'scl' as a prefix.
    """
    namespaces = {}

    print(f"Reading namespaces from file: {file_path}")
    try:
        for _, elem in ET.iterparse(file_path, events=('start-ns',)):
            ns, uri = elem  # Unpack the tuple of prefix and URI
            print(f"Namespace found - Prefix: '{ns}' URI: '{uri}'")
            namespaces[ns] = uri

        if not namespaces:
            print("No namespaces found in the file.")
            return {}

        # Find the first prefix (default namespace or the first declared one)
        first_prefix = next(iter(namespaces))
        print(f"First prefix identified: '{first_prefix}'")

        # Assign the default namespace (or first prefix) a known prefix 'scl'
        new_namespaces = {'scl': namespaces.pop(first_prefix)}
        print(f"Assigned 'scl' prefix to the namespace URI: {new_namespaces['scl']}")

        # Add remaining namespaces
        new_namespaces.update(namespaces)
        print("Final namespaces dictionary:", new_namespaces)

        return new_namespaces

    except FileNotFoundError:
        print(f"Error: File not found: {file_path}")
        raise
    except ET.ParseError as e:
        print(f"Error parsing the XML file: {file_path}. {e}")
        raise

def get_parent(root, namespaces, DUT) -> Union[str, list]:
    """
    Extracts parent IED names and LNode signal addresses from the XML tree.

    Parameters:
        root (ET.Element): The root element of the XML tree.
        namespaces (dict): Namespace dictionary for querying namespaced elements.
        DUT (str): Device Under Test (used for identifying the parent).

    Returns:
        tuple: A parent IED name, a list of IED names, and a list of LNode signal addresses.
    """
    ieds = []
    scd_addresses = []

    print("Processing IED elements...")

    # Process all IED elements
    for ied in root.findall('.//scl:IED', namespaces):
        ied_name = ied.get('name')
        if ied_name:
            ieds.append(ied_name)
            print(f"Found IED - Name: {ied_name}")
        else:
            print("Warning: An IED element is missing the 'name' attribute.")

    print(f"Total IEDs found: {len(ieds)}")

    print("Processing LNode elements...")

    # Process all LNode elements
    for lnode in root.findall('.//scl:LNode', namespaces):
        ied_name = lnode.get('iedName', '')
        ld_inst = lnode.get('ldInst', '')
        pre_fix = lnode.get('prefix', '')
        ln_class = lnode.get('lnClass', '')
        ln_inst = lnode.get('lnInst', '')

        if ied_name and ld_inst and ln_class:
            address = fr"{ied_name}{ld_inst}/{pre_fix}{ln_class}{ln_inst}"
            scd_addresses.append(address)
            print(f"Constructed address: {address}")
        else:
            print(f"Warning: Incomplete LNode attributes. iedName: {ied_name}, ldInst: {ld_inst}, prefix: {pre_fix}, lnClass: {ln_class}, ln_inst: {ln_inst}")

    print(f"Total LNode addresses constructed: {len(scd_addresses)}")

    print(f"Identifying parent for DUT: {DUT}")
    parent = next((ied for ied in ieds if ied in DUT), None)

    if parent:
        print(f"Parent IED identified: {parent}")
    else:
        print("Warning: No parent IED matches the provided DUT.")

    return parent, ieds, scd_addresses

def sort_signal_adresses(signal_addresses: pd.DataFrame, dut: str, adjacent_cell: str) -> list:
    """
    Sorts signal addresses such that:
    1. Addresses containing the DUT appear last.
    2. Address containing the 'adjacent_cell' is positioned second-to-last.

    Parameters:
        signal_addresses (pd.DataFrame): DataFrame containing signal addresses.
        dut (str): Device Under Test identifier.
        adjacent_cell (str): The value of the adjacent cell to prioritize.

    Returns:
        list: Sorted list of signal addresses.
    """
    # Extract signal addresses from column B starting at B2
    signal_list = signal_addresses.iloc[1:, 1].dropna().astype(str).tolist()  # Skip header row
    print("Extracted signal addresses from column B:", signal_list)

    # Print the original list
    print("Original signal addresses:", signal_list)
    print(f"Device Under Test (DUT): {dut}")

    # Sort elements in list based on whether DUT is in the address
    dut_last = sorted(signal_list, key=lambda address: dut in address)
    print("Signal addresses sorted by DUT presence:", dut_last)

    # Find the index of the first 'adjacent_cell' occurrence
    try:
        index = [idx for idx, s in enumerate(dut_last) if adjacent_cell in s][0]
        print(f"Index of '{adjacent_cell}' in sorted addresses: {index}")
    except IndexError:
        print(f"Error: No '{adjacent_cell}' found in signal addresses.")
        raise ValueError(f"No '{adjacent_cell}' found in signal addresses.")

    # Remove the adjacent cell address from list and reinsert at second-to-last position
    adjacent_cell_address = dut_last.pop(index)
    dut_last.insert(-1, adjacent_cell_address)
    print(f"Moved '{adjacent_cell}' address to second-to-last position: {adjacent_cell_address}")
    print("Final sorted signal addresses:", dut_last)
    return dut_last

def create_group_types(signal_addresses: pd.DataFrame) -> dict:
    """
    Dynamically creates group types (CONTROL, ASSESS, COMMAND) by scanning a DataFrame.

    Parameters:
        signal_addresses (pd.DataFrame): DataFrame containing signal addresses.
            - Column B (index 1): Adjacent values for grouping.
            - Column C (index 2): Group type indicators (CONTROL, ASSESS, COMMAND).

    Returns:
        dict: A dictionary with keys "CONTROL," "ASSESS," "COMMAND," and their corresponding lists of addresses.
    """
    # Initialize the groups
    group_types = {
        "CONTROL": [],
        "ASSESS": [],
        "COMMAND": []
    }

    print("Scanning DataFrame for group types...")

    # Iterate through rows to find group types in Column C (index 2)
    for index, row in signal_addresses.iterrows():
        column_c_value = str(row[2]).strip() if not pd.isna(row[2]) else ""  # Column C
        adjacent_value = str(row[1]).strip() if not pd.isna(row[1]) else ""  # Column B

        # Check for each group type and append the adjacent value
        if column_c_value == "CONTROL":
            group_types["CONTROL"].append(adjacent_value)
        elif column_c_value == "ASSESS":
            group_types["ASSESS"].append(adjacent_value)
        elif column_c_value == "COMMAND":
            group_types["COMMAND"].append(adjacent_value)

        # Print validation
        print(f"Row {index + 1}: Found '{column_c_value}' -> Adding '{adjacent_value}'")

    # Print the final groups for validation
    print("\nGenerated Group Types:")
    for group, addresses in group_types.items():
        print(f"{group}: {addresses}")

    return group_types

def get_test_steps(excel_file: str, test_steps_sheet: str) -> pd.DataFrame:
    """Read out the test steps from the Excel file."""
    print(f"Reading test steps from file: {excel_file}, sheet: {test_steps_sheet}")
    test_steps = pd.read_excel(
        excel_file, sheet_name=test_steps_sheet, header=None)
    print("Test Steps DataFrame Head:")
    print(test_steps.head())  # Display the first few rows of the DataFrame for validation
    return test_steps

def get_control_values(test_steps) -> Tuple[pd.DataFrame, int]:
    """
    Skip the first two rows of the test steps (Excel sequence) to remove numbering and assessments,
    and skip the last row to remove commands. Only select data from column 2 onward for switch positions.
    """
    print("Starting get_control_values...")
    print(f"Input test_steps:\n{test_steps.head()}")

    switch_positions = test_steps.iloc[2:-1, 2:]  # Extract relevant rows and columns
    num_test_steps = len(switch_positions.columns) + 1  # Plus one for the initial step

    print(f"Switch positions (after slicing):\n{switch_positions}")
    print(f"Number of test steps (including initial step): {num_test_steps}")

    return switch_positions, num_test_steps

def load_test_type(file_path="test_type.json") -> int:
    """
    Load the test_type value from the specified JSON file.

    Parameters:
        file_path (str): Path to the JSON file containing the test_type.

    Returns:
        int: The test_type value (1 or 2).

    Raises:
        FileNotFoundError: If the file is not found.
        KeyError: If the test_type key is missing.
        ValueError: If the test_type is invalid.
    """
    try:
        with open(file_path, "r") as f:
            test_type_data = json.load(f)
            test_type = test_type_data["test_type"]
        print(f"Imported test_type: {test_type}")
        if test_type not in [1, 2]:
            raise ValueError("Invalid test_type value. Must be 1 or 2.")
        return test_type
    except FileNotFoundError:
        print(f"Error: {file_path} not found. Exiting.")
        raise FileNotFoundError(f"The {file_path} file is missing. Run Truth_Table_x.x.py first to generate it.")
    except KeyError:
        print(f"Error: {file_path} is malformed or missing 'test_type' key.")
        raise KeyError("Invalid test_type.json format. Ensure 'test_type' is set correctly.")
    except ValueError as e:
        print(str(e))
        raise

# Add initial step to assessment_row
def add_initial_assessment_step(assessment_row: np.ndarray, test_type: int) -> np.ndarray:
    """
    Adds the initial step to the assessment_row array based on the test_type.

    Parameters:
        assessment_row (np.ndarray): The original assessment_row array.
        test_type (int): The test type (1 for SPC, 2 for DPC).

    Returns:
        np.ndarray: Updated assessment_row with the initial assessment step added.
    """
    if test_type == 1:
        initial_step = False
        print("Test Type 1 (SPC): Adding initial step 'False'.")
    elif test_type == 2:
        initial_step = True
        print("Test Type 2 (DPC): Adding initial step 'True'.")
    else:
        raise ValueError("Invalid test type. Must be 1 (SPC) or 2 (DPC).")

    updated_assessment_row = np.insert(assessment_row, 0, initial_step)
    # print(f"Updated assessment_row with initial step: {updated_assessment_row}")
    return updated_assessment_row

def modify_switch_positions(switch_positions, test_type):
    """
    Modify switch_positions based on the test_type.

    Parameters:
        switch_positions (pd.DataFrame): DataFrame containing switch positions.
        test_type (int): The test_type value (1 or 2).
    """
    if test_type == 1:
        print("User selected SPC (True/False). Setting initial switch position to 'false'.")
        switch_positions.insert(0, 0, "false")
    elif test_type == 2:
        print("User selected DPC (OPEN/CLOSED). Setting initial switch position to 'POS_OFF'.")
        switch_positions.insert(0, 0, "POS_OFF")
    print("\nWith Initial Step Added:")
    print(switch_positions.head())

def process_circuit_breakers(switch_positions, test_type):
    """
    Process circuit breakers based on the test_type.

    Parameters:
        switch_positions (pd.DataFrame or np.ndarray): DataFrame or array containing switch positions.
        test_type (int): The test_type value (1 or 2).

    Returns:
        tuple: circuit_breakers (list), cb_states (dict)
    """
    # Ensure switch_positions is a DataFrame
    if isinstance(switch_positions, np.ndarray):
        switch_positions = pd.DataFrame(switch_positions)

    circuit_breakers = []
    cb_states = {}

    if test_type == 2:
        print("Test Type 2 (DPC - OPEN/CLOSED) selected. Processing circuit breakers...")

        # Identify circuit breakers
        circuit_breakers = [x for x in switch_positions.index if re.search(r"QA\d", str(x)) or ("XCBR" in str(x))]
        print(f"Circuit Breakers Identified: {circuit_breakers}")

        # Populate cb_states dictionary
        for cb in circuit_breakers:
            states = switch_positions.loc[cb].values.flatten()
            print(f"Processing {cb}: States = {states}")
            cb_states[cb] = states

        print(f"Final Circuit Breaker States: {cb_states}")
    elif test_type == 1:
        print("Test Type 1 (SPC - True/False) selected. Skipping circuit breaker processing.")

    return circuit_breakers, cb_states

def apply_commands_based_on_assessment(assessment_row: np.ndarray, num_test_steps: int) -> list:
    """
    Apply specific commands based on the first True and False values in the assessment_row.

    Parameters:
        assessment_row (np.ndarray): Array containing True/False assessments.
        num_test_steps (int): Total number of test steps.

    Returns:
        list: Updated command_row with specific commands applied.
    """
    print("Applying commands based on assessment_row...")

    # Find the indices of the first True and first False in the assessment_row
    try:
        assessment_idxs = [
            np.where(assessment_row == True)[0][0],  # First True index
            np.where(assessment_row == False)[0][0]  # First False index
        ]
        print(f"Assessment Indices: {assessment_idxs}")
    except IndexError:
        print("Error: Assessment_row must contain at least one True and one False value.")
        raise ValueError("Assessment_row does not meet the required conditions.")

    # Initialize the command_row with default values ("CAR_NO_OPERATION")
    command_row = ["CAR_NO_OPERATION"] * num_test_steps
    print(f"Initialized command_row: {command_row}")

    # Define the commands for True and False assessments
    changes_command = ["CAR_POSITION_CHANGED", "CAR_BLOCKED_BY_INTERLOCKING"]

    # Apply the commands at the respective indices
    for idx, command in zip(assessment_idxs, changes_command):
        command_row[idx] = command
        print(f"Set command '{command}' at index {idx}")

    print(f"Final command_row: {command_row}")
    return command_row

def sort_switch_order(LNs_signal_dict: dict, cb_direction: str) -> dict:
    """
    Sort the dictionary keys based on the circuit breaker (CB) direction (opening/closing).
    Keys with 'XSWI' are sorted last when opening and first when closing.
    """
    print("Starting sort_switch_order...")
    print(f"Input LNs_signal_dict: {LNs_signal_dict}")
    print(f"CB Direction: {cb_direction}")

    key = list(LNs_signal_dict.keys())  # Get dictionary keys
    print(f"Original keys: {key}")

    if cb_direction.lower() == 'opening':
        sorted_keys = sorted(key[:-2], key=lambda x: ('XSWI' in x, x))  # Sort for opening
    elif cb_direction.lower() == 'closing':
        sorted_keys = sorted(key[:-2], key=lambda x: ('XSWI' not in x, x))  # Sort for closing
    else:
        print("Invalid cb_direction! Must be 'opening' or 'closing'.")
        return {}

    sorted_keys += key[-2:]  # Add the last two keys
    print(f"Sorted keys: {sorted_keys}")

    new_dict = {key: LNs_signal_dict[key] for key in sorted_keys}
    print(f"New sorted dictionary: {new_dict}")
    return new_dict

def get_expected_vals(LNs_signal_dict: dict) -> dict:
    """
    Retrieve the expected values for each Logical Node (LN) in each step from the dictionary.
    """
    print("Starting get_expected_vals...")
    print(f"Input LNs_signal_dict: {LNs_signal_dict}")

    # Ensure `num_test_steps` is defined before using this function
    try:
        expected_vals = {
            i: [LNs_signal_dict[k][i] for k in LNs_signal_dict.keys()]
            for i in range(num_test_steps)
        }
        print(f"Expected values: {expected_vals}")
        return expected_vals
    except NameError as e:
        print("Error: num_test_steps is not defined. Ensure get_control_values is called first.")
        raise e

def create_FAT_json(
        version: float,
        test_name: str,
        dut_name: str,
        group_types: dict,
        num_test_steps: int,
        test_type: int,
        switch_positions: np.ndarray,
        assessment_row: list,
        LNs_signal: dict,
        circuit_breakers=None,
        cb_states=None
) -> dict:
    print("Starting create_FAT_json...")

    # Initialize the JSON structure
    ilo_FAT = {
        "version": str(version),
        "testCases": [
            {
                "name": test_name,
                "parent": dut_name,
                "autoSetControlValues": True,
                "autoAssess": True,
                "assessmentLockoutTime": 1.5,
                "autoAssessTimeout": 1.5,
                "switchOperationTime": 1.5,
                "signalGroups": [],
                "testSteps": []
            }
        ]
    }

    # Add Signal Groups
    for group_type, signals in group_types.items():
        ilo_FAT["testCases"][0]["signalGroups"].append({
            "groupType": group_type,
            "signalRefs": signals
        })
        print(f"Added signal group: {group_type}, Signal References: {signals}")

    # Consolidate all signals from all groups
    all_signals = []
    for signals in group_types.values():
        all_signals.extend(signals)

    # Handle Test Steps for test_type == 1
    if test_type == 1:
        print("Processing Test Steps for Test Type 1 (SPC - True/False)...")
        for step in range(num_test_steps):
            print(f"Processing step {step + 1}/{num_test_steps}...")

            # Extract CONTROL values from the first rows of val_assess_cmd
            expected_control = [
                {
                    "signalRef": signal,
                    "value": val_assess_cmd[control_idx, step]
                    if control_idx < val_assess_cmd.shape[0] and step < val_assess_cmd.shape[1]
                    else "Undefined"
                }
                for control_idx, signal in enumerate(group_types.get("CONTROL", []))
            ]

            # Extract ASSESS values from the last row of val_assess_cmd (assessment_row)
            expected_assess = [
                {
                    "signalRef": signal,
                    "value": val_assess_cmd[-1, step]  # Last row contains ASSESS values
                    if step < val_assess_cmd.shape[1]
                    else "Undefined"
                }
                for signal in group_types.get("ASSESS", [])
            ]

            # Combine CONTROL and ASSESS values into a single test step
            test_step = {
                "description": "",
                "ordered": True,
                "expected": expected_control + expected_assess
            }

            # Append the step to the testSteps array
            ilo_FAT["testCases"][0]["testSteps"].append(test_step)


    # Handle Test Steps for test_type == 2
    elif test_type == 2:
        print("Processing Test Steps for Test Type 2 (DPC - OPEN/CLOSED)...")
        for step in range(num_test_steps):
            print(f"Processing step {step + 1}/{num_test_steps}...")

            # Extract CONTROL values from the first rows of val_assess_cmd
            expected_control = [
                {
                    "signalRef": signal,
                    "value": val_assess_cmd[control_idx, step]
                    if control_idx < len(group_types.get("CONTROL", [])) and step < val_assess_cmd.shape[1]
                    else "Undefined"
                }
                for control_idx, signal in enumerate(group_types.get("CONTROL", []))
            ]

            # Extract ASSESS values from the row corresponding to ASSESS signals in val_assess_cmd
            expected_assess = [
                {
                    "signalRef": signal,
                    "value": val_assess_cmd[len(group_types.get("CONTROL", [])), step]
                    if step < val_assess_cmd.shape[1]
                    else "Undefined"
                }
                for signal in group_types.get("ASSESS", [])
            ]

            # Extract COMMAND values from the row corresponding to COMMAND signals in val_assess_cmd
            expected_command = [
                {
                    "signalRef": signal,
                    "commandResult": val_assess_cmd[len(group_types.get("CONTROL", [])) + 1, step]
                    if step < val_assess_cmd.shape[1]
                    else "Undefined"
                }
                for signal in group_types.get("COMMAND", [])
            ]

            # Combine CONTROL, ASSESS, and COMMAND values into a single test step
            expected_values = expected_control + expected_assess + expected_command

            # Handle step description and ordering
            if step == 0:
                test_step = {
                    "description": "",
                    "ordered": False,
                    "expected": expected_values
                }
                ilo_FAT["testCases"][0]["testSteps"].append(test_step)
                print(f"Added initial step with all signal values for step {step + 1}.")
            elif any(cb_states.get(cb, [])[step] == "POS_ON" and cb_states.get(cb, [])[step - 1] == "POS_OFF"
                     for cb in circuit_breakers):
                print(f"Step {step + 1}: CLOSING CB detected.")
                test_step = {
                    "description": "",
                    "ordered": True,
                    "expected": expected_values
                }
                ilo_FAT["testCases"][0]["testSteps"].append(test_step)
            elif any(cb_states.get(cb, [])[step] == "POS_OFF" and cb_states.get(cb, [])[step - 1] == "POS_ON"
                     for cb in circuit_breakers):
                print(f"Step {step + 1}: OPENING CB detected.")
                test_step = {
                    "description": "",
                    "ordered": True,
                    "expected": expected_values
                }
                ilo_FAT["testCases"][0]["testSteps"].append(test_step)
            else:
                print(f"Step {step + 1}: Default step added.")
                test_step = {
                    "description": "",
                    "ordered": True,
                    "expected": expected_values
                }
                ilo_FAT["testCases"][0]["testSteps"].append(test_step)

    print("JSON creation complete.")
    return ilo_FAT

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

signal_addresses = get_signal_addresses(
    excel_file=test_sequence_file, signal_addresses_sheet="Signal Addresses"
)

dut, adjacent_cell_value = determine_DUT(signal_addresses)
print("Determined DUT:", dut)

root = get_root(scd_file)
namespaces = get_namespaces(scd_file)
# Print the inputs to the get_parent function for validation
print("Calling get_parent function...")
print(f"Root element tag: {root.tag}")
print(f"Namespaces: {namespaces}")
print(f"Device Under Test (DUT): {dut}")

# Call the get_parent function
parent, ieds, scd_addresses = get_parent(root, namespaces, dut)

# Print the results returned by get_parent for validation
print("\nResults from get_parent:")
print(f"Parent IED: {parent}")
print(f"IEDs: {ieds}")
print(f"Total IEDs found: {len(ieds)}")
print(f"Signal Addresses (scd_addresses): {scd_addresses}")
print(f"Total Signal Addresses: {len(scd_addresses)}")

# compare the list of ieds from the SCD file with the list of ieds
# from the signal addresses and extract only the ones used.
# bay_ieds = [ied for ied in ieds if any(
#     ied in signal for signal in signal_addresses)]


# Print the returned values for debugging
print(f"Determined DUT: {dut}")
print(f"Adjacent Cell Value: {adjacent_cell_value}")

# Call sort_signal_adresses with the DUT and adjacent cell value
try:
    sorted_addresses = sort_signal_adresses(signal_addresses, dut, adjacent_cell=adjacent_cell_value)
    print("\nResults from sort_signal_adresses:")
    print("Sorted Signal Addresses:", sorted_addresses)
    print(f"Total Signal Addresses: {len(sorted_addresses)}")
except ValueError as e:
    print("Error during sorting:", e)

# Check if all signal addresses are contained in the list of scd addresses
# Prepare signal addresses for comparison
print("\nPreparing signal addresses for SCD comparison...")
signal_addresses_check = [address.split(".")[0] for address in sorted_addresses]
print("Signal Addresses for Comparison (before '.'): ", signal_addresses_check)

# Check if all signal addresses are contained in the SCD addresses
print("\nChecking if all signal addresses are in SCD addresses...")
if all(address in scd_addresses for address in signal_addresses_check):
    print("All signal addresses are contained in the SCD")
else:
    # Find missing addresses for better error reporting
    missing_addresses = [address for address in signal_addresses_check if address not in scd_addresses]
    print("Missing Signal Addresses:", missing_addresses)
    raise Exception(f"Not all signal addresses are contained in the SCD. Missing addresses: {missing_addresses}")

try:
    print("Calling create_group_types...")
    group_types = create_group_types(signal_addresses)
    print("\nValidation of Group Types:")
    for group, addresses in group_types.items():
        print(f"{group}: {addresses}")
        if not addresses:
            print(f"Warning: {group} group is empty.")
except ValueError as e:
    print(f"Error: {e}")
except Exception as e:
    print(f"Unexpected Error: {e}")

# Example call with validation
try:
    print("Fetching test steps...")
    test_steps = get_test_steps(
        excel_file=test_sequence_file, test_steps_sheet="Test Steps")
    print("Test Steps DataFrame Loaded Successfully.")
    print("Test Steps Shape:", test_steps.shape)  # Validate shape of DataFrame
except FileNotFoundError as e:
    print(f"File not found: {e}")
except ValueError as e:
    print(f"Value error: {e}")
except Exception as e:
    print(f"An unexpected error occurred: {e}")

switch_positions, num_test_steps = get_control_values(test_steps)

test_type = load_test_type()  # Load test_type from JSON

# Assuming `test_steps` is a pandas DataFrame
try:
    print("Extracting assessment_row from test_steps...")

    # Locate the row where "ASSESS" is in column B (index 1)
    assess_row_index = test_steps[test_steps.iloc[:, 1].astype(str).str.contains("ASSESS", na=False)].index[0]

    # Extract the values from the found row, from column 2 onwards
    assessment_row = test_steps.iloc[assess_row_index, 2:].values.flatten()

    print(f"Original assessment_row (without initial step): {assessment_row}")

    # Call the function to add the initial step
    assessment_row = add_initial_assessment_step(assessment_row, test_type)

    print(f"Updated assessment_row (with initial step): {assessment_row}")

except IndexError as e:
    print("Error: The specified row or columns do not exist in test_steps.")
    raise e
except Exception as e:
    print("An unexpected error occurred:", e)
    raise e

print("Switch Positions (Before):")
print(switch_positions.head())

switch_positions.index = group_types["CONTROL"]
print("\nUpdated Index:")
print(switch_positions.index)

switch_positions.replace("CLOSED", "POS_ON", inplace=True, regex=True)
switch_positions.replace("closed", "POS_ON", inplace=True, regex=True)
switch_positions.replace("OPEN", "POS_OFF", inplace=True, regex=True)
switch_positions.replace("open", "POS_OFF", inplace=True, regex=True)
switch_positions.replace("true", "true", inplace=True, regex=True)
switch_positions.replace("false", "false", inplace=True, regex=True)
print("\nStandardized Values:")
print(switch_positions.head())

# Modify switch_positions
mod_pos = modify_switch_positions(switch_positions, test_type)

if test_type == 2:
    print("Test Type 2 (DPC): Applying command logic...")
    command_row = apply_commands_based_on_assessment(assessment_row, num_test_steps)
elif test_type == 1:
    print("Test Type 1 (SPC): Skipping command logic...")
    # command_row = ["CAR_NO_OPERATION"] * num_test_steps  # Default inactive commands
    # print(f"Initialized command_row: {command_row}")
else:
    print("No valid test type imported. Exiting or handling default behavior.")
    raise ValueError("Invalid test type imported.")

# Convert to NumPy array for later use in stacking
print("Resetting index and converting switch_positions to NumPy array...")
switch_positions.reset_index(drop=True, inplace=True)
print(f"Reset switch_positions DataFrame:\n{switch_positions.head()}")

switch_positions = switch_positions.to_numpy()
print(f"Converted switch_positions to NumPy array:\n{switch_positions}")

# Conditional stacking based on test_type
if test_type == 2:
    print("Test Type 2 (DPC - OPEN/CLOSED): Including switch_positions, assessment_row, and command_row in stacking...")
    val_assess_cmd = np.vstack([switch_positions, assessment_row, command_row])
elif test_type == 1:
    print("Test Type 1 (SPC - True/False): Including only switch_positions and assessment_row in stacking...")
    val_assess_cmd = np.vstack([switch_positions, assessment_row])
else:
    print("Invalid test_type. Exiting.")
    raise ValueError("Invalid test_type imported.")

print(f"Combined val_assess_cmd array:\n{val_assess_cmd}")

# Create a dictionary to pair signal addresses with combined data
print("\nCreating a dictionary to pair signal addresses with combined data...")
print(f"Signal Addresses:\n{signal_addresses}")
print(f"val_assess_cmd Rows (to be mapped):\n{val_assess_cmd}")

LNs_signal = dict(zip(signal_addresses, val_assess_cmd))

# Validation: Print a sample of the dictionary
print("\nValidation: Final LNs_signal dictionary (signal address to data mapping):")
for key, value in list(LNs_signal.items())[:5]:  # Print the first 5 items for validation
    print(f"Signal Address: {key}, Data: {value}")

print("\nSuccessfully created LNs_signal dictionary!")

# Call process_circuit_breakers to get circuit_breakers and cb_states
circuit_breakers, cb_states = process_circuit_breakers(switch_positions, test_type)

# Call create_FAT_json with circuit_breakers and cb_states
json_structure = create_FAT_json(
    version=1.2,
    test_name=json_output_file,
    dut_name=parent,
    group_types=group_types,
    num_test_steps=num_test_steps,
    test_type=test_type,
    # signal_addresses=signal_addresses,
    switch_positions=switch_positions,
    assessment_row=assessment_row,
    LNs_signal=LNs_signal,
    circuit_breakers=circuit_breakers,
    cb_states=cb_states  # Pass cb_states as an argument
)

# Json export
with open(json_output_file+".json", "w") as file:
    json.dump(json_structure, file, indent=2)


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
                    "parent",
                    "autoSetControlValues",
                    "autoAssess",
                    "assessmentLockoutTime",
                    "autoAssessTimeout",
                    "switchOperationTime",
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

