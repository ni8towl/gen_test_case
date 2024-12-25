
from tkinter import filedialog
from tkinter import messagebox
import tkinter as tk

# Create a GUI window
class FileBrowserApp:
    def __init__(self, root):
        self.root = root
        self.root.title("File Browser")

        self.excel_file_path = tk.StringVar()
        self.xml_file_path = tk.StringVar()
        self.input_string = tk.StringVar()
        # self.LN_input_string = tk.StringVar()

        # Excel File Browser
        self.excel_label = tk.Label(root, text="Select Excel File:")
        self.excel_label.pack()
        self.excel_entry = tk.Entry(root, textvariable=self.excel_file_path, width=50)
        self.excel_entry.pack()
        self.excel_button = tk.Button(root, text="Browse", command=self.browse_excel_file)
        self.excel_button.pack()

        # # Input String
        # self.string_label = tk.Label(root, text="Enter the name For the LN (with prefix and suffix) for assessment:")
        # self.string_label.pack()
        # self.string_entry = tk.Entry(root, textvariable=self.LN_input_string, width=50)
        # self.string_entry.pack()

        # XML File Browser
        self.xml_label = tk.Label(root, text="Select SCD File:")
        self.xml_label.pack()
        self.xml_entry = tk.Entry(root, textvariable=self.xml_file_path, width=50)
        self.xml_entry.pack()
        self.xml_button = tk.Button(root, text="Browse", command=self.browse_xml_file)
        self.xml_button.pack()

        # Input String
        self.string_label = tk.Label(root, text="Enter a name for the JSON output file:")
        self.string_label.pack()
        self.string_entry = tk.Entry(root, textvariable=self.input_string, width=50)
        self.string_entry.pack()

        # Continue Button
        self.continue_button = tk.Button(root, text="Continue", command=self.continue_execution)
        self.continue_button.pack()

    def browse_excel_file(self):
        file_path = filedialog.askopenfilename(filetypes=[("Excel files", "*.xlsx *.xls")])
        self.excel_file_path.set(file_path)

    def browse_xml_file(self):
        file_path = filedialog.askopenfilename(filetypes=[("SCD files", "*.scd")])
        self.xml_file_path.set(file_path)

    def continue_execution(self):
        if not self.excel_file_path.get():
            messagebox.showerror("Error", "Please select an Excel file.")
            return
        if not self.xml_file_path.get():
            messagebox.showerror("Error", "Please select an SCD file.")
            return
        if not self.input_string.get():
            messagebox.showerror("Error", "Please enter a string.")
            return
        # if not self.LN_input_string.get():
        #     messagebox.showerror("Error", "Please enter a string.")
        #     return

        # Store the values in instance variables for later use
        self.excel_file = self.excel_file_path.get()
        self.xml_file = self.xml_file_path.get()
        self.input_str = self.input_string.get()
        # self.ln_input_str = self.LN_input_string.get()

        # Inform the user that the files and input string have been captured
        # messagebox.showinfo("Info", f"Excel file: {self.excel_file}\nXML file: {self.xml_file}\nString: {self.input_str}")

        # Close the GUI window
        self.root.quit()