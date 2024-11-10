# Generate Test Cases in StationScout (Ver7.2)

This version comes with a GUI, select your own signal list and scl file. 
Also, permutations of test steps can be generated automatically.
This is a proof of concept and limited to 6 inputs and 1 out for creating a logic test. Expand for your system as required. 

# Steps to follow:

1) Modify the formula for interlocking logic in Truth_Table_1.1.py as required.

2)  Run Generate_Test_Case_Ver7.2.py using in the GUI: "Expanded_test1.2.xlsx" and associated SCL file "5.1-20230131_NUCBX1.scd"

4) Choose a name for you .json file.

5) Import Json file into StationScout (Tested with version StationScout 2.40 successfully).
