# Generate Test Cases in StationScout (Ver8.00)

This version comes with a GUI. 
Using your substation automation logic, signal list and scl file create all the permutations of test steps automatically.

# Steps to follow:

1) Fill in the 'Signal Addresses' tab in the spreadsheet provided with your signal list.  You can use the example provided: "Example_test1.6.xlsx" 
2) Run Generate_Test_Case_Ver_8.00.py. Keep all files provided in the same folder.
3) Select the number of inputs.
4) Decide if the test is for any Single Point Status (True/False) values or for switchgear (Open/CLOSED)
5) Select the ##.xlsx file you want to copy the Test Steps to.
6) Select your ##.xlsx and SCL file. You can use the examples provided.
7) Choose a name for you .json file.
8) Import Json file into StationScout (Tested with version StationScout 3.00 successfully).
