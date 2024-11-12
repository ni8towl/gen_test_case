import pandas as pd
from itertools import product
import tkinter as tk
from tkinter import simpledialog

# Define the function with default logic (can be overridden by user input)
def Output1(Input1, Input2, Input3, Input4, Input5, Input6):
    return eval(user_logic)

# Function to get user-defined logic using a pop-up window
def get_user_logic():
    root = tk.Tk()
    root.withdraw()  # Hide the main window
    default_logic = "((Input3 and Input4 and Input5) or Input2) and Input1 and Input6"
    user_input = simpledialog.askstring(
        "Input Logic Expression",
        f"Enter a logic expression using these variables:\n"
        f"Input1, Input2, Input3, Input4, Input5, Input6\n"
        f"Default: {default_logic}",
        initialvalue=default_logic
    )
    root.destroy()
    return user_input or default_logic

# Get user-defined logic expression
user_logic = get_user_logic()

# Generate the truth table based on the user-defined logic
def truth_table(f):
    values = [list(x) + [f(*x)] for x in product([False, True], repeat=f.__code__.co_argcount)]
    return pd.DataFrame(values, columns=(list(f.__code__.co_varnames) + [f.__name__]))

truth_table(Output1).to_csv('out.csv', index=False)

# Read the CSV file into a pandas DataFrame
df = pd.read_csv("out.csv")

# Ensure all values are treated as strings to prevent issues with boolean False
df = df.astype(str)

# Replace "FALSE" with "CLOSED" in the entire DataFrame (or you can specify a column)
df["Input1"] = df["Input1"].replace(["False", "FALSE"], "CLOSED")
df["Input1"] = df["Input1"].replace(["True", "TRUE"], "OPEN")
df["Input2"] = df["Input2"].replace(["False", "FALSE"], "CLOSED")
df["Input2"] = df["Input2"].replace(["True", "TRUE"], "OPEN")
df["Input3"] = df["Input3"].replace(["False", "FALSE"], "CLOSED")
df["Input3"] = df["Input3"].replace(["True", "TRUE"], "OPEN")
df["Input4"] = df["Input4"].replace(["False", "FALSE"], "CLOSED")
df["Input4"] = df["Input4"].replace(["True", "TRUE"], "OPEN")
df["Input5"] = df["Input5"].replace(["False", "FALSE"], "CLOSED")
df["Input5"] = df["Input5"].replace(["True", "TRUE"], "OPEN")
df["Input6"] = df["Input6"].replace(["False", "FALSE"], "CLOSED")
df["Input6"] = df["Input6"].replace(["True", "TRUE"], "OPEN")

# Save the updated DataFrame to a new CSV file
df.to_csv("out_updated.csv", index=False)

print("Updated CSV saved as out_updated.csv")

df = pd.read_csv("out_updated.csv")

#print(df)

# Print the truth table
from prettytable import from_csv
with open("out_updated.csv") as fp:
    mytable = from_csv(fp)
print(mytable)

# Transpose the DataFrame and save it to Excel
df_transposed = df.transpose()
df_transposed.to_excel("output_file_transposed.xlsx", index=False, header=False)
print("Data successfully saved to output_file_transposed.xlsx")

# Copy the transposed data to the specified Excel file
from excel_utils import copy_columns_between_excel_files

source_file = "output_file_transposed.xlsx"
destination_file = "Expanded_test1.3.xlsx"
source_sheet_name = "Sheet1"
destination_sheet_name = "Test Steps"

column_range = "A:BL"  # Specify the columns to copy
start_row = 1
end_row = 7
start_cell_in_destination = "C3"

copy_columns_between_excel_files(
    source_file=source_file,
    destination_file=destination_file,
    source_sheet_name=source_sheet_name,
    destination_sheet_name=destination_sheet_name,
    column_range=column_range,
    start_row=start_row,
    end_row=end_row,
    start_cell_in_destination=start_cell_in_destination
)

print("Completed copying the specified columns starting from C3!")
exit(0)
