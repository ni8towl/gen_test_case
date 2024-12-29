# Generate Test Cases in StationScout (Ver8.00)

This version comes with a GUI. 
Using your substation automation logic, signal list and scl file create all the permutations of test steps automatically.

# Steps to follow:

1) Fill in the 'Signal Addresses' tab in the spreadsheet provided with your signal list.  You can use the example provided: "Example_test1.6.xlsx" 
2) Keep all files provided in the same folder. Unzip the Images folder.
3) Run Generate_Test_Case_Ver_8.00.py.
   
5) Select the number of inputs.
6) Decide if the test is for any Single Point Status (True/False) values or for switchgear (Open/CLOSED)
7) Select the ##.xlsx file you want to copy the Test Steps to.
8) Select your ##.xlsx and SCL file. You can use the examples provided.
9) Choose a name for your .json file.
10) Import Json file into StationScout (Tested with version StationScout 3.00 successfully).
