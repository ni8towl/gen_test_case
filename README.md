# Generate Test Cases in StationScout (Ver7.4)

This version comes with a GUI. 
Using your substation automation logic, signal list and scl file create all the permutations of test steps automatically.
This is a proof of concept and limited to 6 inputs and 1 out for creating a logic test. Expand for your system as required. 

# Steps to follow:

1) Run Generate_Test_Case_Ver7.4.py. Enter in the GUI your Input logic which will generate all the Test Steps permutations.

2) Select the .xlsx file you want to copy the Test Steps to. You can use the example provided: "Expanded_test1.4.xlsx" 

3) Select your signal list.xlsx and SCL file. You can use the examples provided: "Expanded_test1.4.xlsx" and associated SCL file "5.1-20230131_NUCBX1.scd"

4) Choose a name for you .json file.

5) Import Json file into StationScout (Tested with version StationScout 3.00 successfully).
