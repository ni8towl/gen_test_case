# Usng Generate_Test_Case_Ver7.py

Generate_Test_Case_Ver7.py comes with a GUI, select your own signal list and scl file. 
Also, permutations of test steps can be generated automatically by using Truth_Table.py.   

Steps to use:

1) Run Truth_Table.py to create permutations of 'test steps'. Modify formula of interlocking logic here as required. 
Output of this code will be a out.csv
Example of manual changes needed can be seen in example out1.csv. Change TRUE and FALSE values to OPEN and CLOSED as needed. 

2) Manually create your test steps in Expanded_test1.xlsx 'Test Steps' tab by copying the values from out1.csv.

3)  Run Generate_Test_Case_Ver7.py using provided: Expanded_test1.xlsx

4) Use associated SCL file: 5.1-20230131_NUCBX1.scd

5) Choose a name for you .json file.

6) Import Json file into StationScout (Tested with version 2.40 successfully).
