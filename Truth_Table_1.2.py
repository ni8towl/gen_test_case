# define your logic here currently limited to 6 inputs and 1 output
# Take care of changing static references
def Q01_QB1(Q01_QA1,Q01_QB2,Q05_QA1,Q05_QB1,Q05_QB2,Q05_QC11): # function name: output, function parameters: inputs
    return ((Q05_QA1 and Q05_QB1 and Q05_QB2) or Q01_QB2) and Q01_QA1 and Q05_QC11
# ---------------

import pandas as pd
from itertools import product

def truth_table(f):
    values = [list(x) + [f(*x)] for x in product([False,True], repeat=f.__code__.co_argcount)]
    return pd.DataFrame(values,columns=(list(f.__code__.co_varnames) + [f.__name__]))

truth_table(Q01_QB1).to_csv('out.csv', index=False)

import pandas as pd

# Read the CSV file into a pandas DataFrame
df = pd.read_csv("out.csv")

# Ensure all values are treated as strings to prevent issues with boolean False
df = df.astype(str)

# Replace "FALSE" with "CLOSED" in the entire DataFrame (or you can specify a column)
df["Q01_QA1"] = df["Q01_QA1"].replace(["False", "FALSE"], "CLOSED")
df["Q01_QA1"] = df["Q01_QA1"].replace(["True", "TRUE"], "OPEN")
df["Q01_QB2"] = df["Q01_QB2"].replace(["False", "FALSE"], "CLOSED")
df["Q01_QB2"] = df["Q01_QB2"].replace(["True", "TRUE"], "OPEN")
df["Q05_QA1"] = df["Q05_QA1"].replace(["False", "FALSE"], "CLOSED")
df["Q05_QA1"] = df["Q05_QA1"].replace(["True", "TRUE"], "OPEN")
df["Q05_QB1"] = df["Q05_QB1"].replace(["False", "FALSE"], "CLOSED")
df["Q05_QB1"] = df["Q05_QB1"].replace(["True", "TRUE"], "OPEN")
df["Q05_QB2"] = df["Q05_QB2"].replace(["False", "FALSE"], "CLOSED")
df["Q05_QB2"] = df["Q05_QB2"].replace(["True", "TRUE"], "OPEN")
df["Q05_QC11"] = df["Q05_QC11"].replace(["False", "FALSE"], "CLOSED")
df["Q05_QC11"] = df["Q05_QC11"].replace(["True", "TRUE"], "OPEN")

# Save the updated DataFrame to a new CSV file
df.to_csv("out_updated.csv", index=False)

print("Updated CSV saved as out_updated.csv")

df = pd.read_csv("out_updated.csv")

#print(df)

from prettytable import from_csv
with open("out_updated.csv") as fp:
     mytable1 = from_csv(fp)

print(mytable1)

# Transpose the DataFrame to swap rows and columns
df_transposed = df.transpose()

# Save the transposed DataFrame to an Excel file
df_transposed.to_excel("output_file_transposed.xlsx", index=False, header=False)

print("Data successfully saved to output_file_transposed.xlsx")


# source_file = "output_file_transposed.xlsx"
# destination_file = "Expanded_test1.1.xlsx"
# source_sheet_name = "Sheet1"
# destination_sheet_name = "Test Steps"

from excel_utils import copy_columns_between_excel_files

source_file = "output_file_transposed.xlsx"
destination_file = "Expanded_test1.2.xlsx"
source_sheet_name = "Sheet1"
destination_sheet_name = "Test Steps"

column_range = "A:BL"  # Specify the columns to copy
start_row = 1
end_row = 7
start_cell_in_destination = "C3"  # Starting cell in the destination sheet

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










