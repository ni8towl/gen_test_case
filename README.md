# Generate Test Cases in StationScout (Ver7.1)

This version comes with a GUI, select your own signal list and scl file. 
Also, permutations of test steps can be generated automatically.
This is a proof of concept and limited to 6 inputs and 1 out for creating a logic test. Expand for your system as required. 

# Steps to follow:

1) Run Truth_Table_1.1.py to create permutations of 'test steps'. Modify formula of interlocking logic here as required. 
Output of this code will be a "output_file_transposed.xlsx"

2) Copy the test steps created in "output_file_transposed.xlsx" and paste them in "Expanded_test1.1.xlsx" under the "Test Steps" tab. Copy the values in the yellow section.

3)  Run Generate_Test_Case_Ver7.1.py using in the GUI: "Expanded_test1.1.xlsx" and associated SCL file "5.1-20230131_NUCBX1.scd"

4) Choose a name for you .json file.

5) Import Json file into StationScout (Tested with version StationScout 2.40 successfully).
