# Generate Test Cases in StationScout (Ver8.03)

This version comes with a GUI. 
Using your substation automation logic which can be entered manually or imported in using a 61131-3 FBD file. 
Also, using a signal list in excel and SCD file create all the permutations of test steps automatically.

# Steps to follow:

1) Fill in the 'Signal Addresses' tab in the spreadsheet provided with your signal list.  You can use the example provided: "Example_test1.6.xlsx" 
2) Keep all files provided in the same folder. Unzip the Images folder.
3) Run Generate_Test_Case_Ver_8.03.py.
4) If you have a 61131-3 FBD file select it and the logic will be derived and saved in a project folder. 
5) Select the number of inputs.
6) Decide if the test is for any Single Point Status (True/False) values or for switchgear (Open/CLOSED)
7) Input the logic being tested as a formula. Enter manually or if you derived it from the 61131-3 file then copy and paste it here. 
8) Select the ##.xlsx file you want to copy the Test Steps to.
9) Select your ##.xlsx (Should be the same as the one is step 7) and SCL file. You can use the examples provided.
10) Choose a name for your .json file.
11) Import Json file into StationScout (Tested with version StationScout 3.00 successfully).

# Video Demo

https://youtu.be/vj9r4vC3_tg?si=70dQa469DMKG4yN9
(How to use without IEC 61131-3)
