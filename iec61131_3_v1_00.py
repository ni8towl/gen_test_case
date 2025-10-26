import os
import xml.etree.ElementTree as ET
import tkinter as tk
from tkinter import filedialog
from tkinter import Toplevel
import matplotlib.pyplot as plt
from PIL import ImageTk, Image
import pandas as pd
from reportlab.lib.pagesizes import A4
from reportlab.lib.units import inch
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Image, Table, TableStyle, PageBreak
from reportlab.lib.styles import getSampleStyleSheet
from reportlab.lib import colors
from io import BytesIO
from datetime import datetime
import matplotlib.patches as patches
import re

DEBUG = True  # Set to False to disable debug prints

# ---------------- Helper: Remove XML namespaces ----------------
def strip_namespace(tree):
    for elem in tree.iter():
        if '}' in elem.tag:
            elem.tag = elem.tag.split('}', 1)[1]
    return tree

# ---------------- Generate Function Block Diagram ----------------
def generate_matplotlib_diagram(pou_name, blocks, in_vars, out_vars, block_inputs, out_connections, save_path=None):
    fig, ax = plt.subplots(figsize=(10, 8))
    ax.set_xlim(0, 12)
    ax.set_ylim(0, 10)
    ax.set_aspect('equal')
    ax.axis('off')

    node_positions = {}
    y_offset = 8

    block_spacing = 2
    for block_id, type_name, _, _ in blocks:
        ax.add_patch(patches.Rectangle((3, y_offset), 3, 1, linewidth=1, edgecolor='black', facecolor='lightblue'))
        ax.text(4.5, y_offset + 0.5, type_name, ha='center', va='center', fontsize=10)
        node_positions[block_id] = (4.5, y_offset + 0.5)
        y_offset -= block_spacing

    y_offset = 8
    input_spacing = 1.5
    for var_id, expr, _, _ in in_vars:
        ax.add_patch(patches.Ellipse((1, y_offset), 2, 1, linewidth=1, edgecolor='black', facecolor='lightgreen'))
        ax.text(1, y_offset, expr, ha='center', va='center', fontsize=10)
        node_positions[var_id] = (1, y_offset)
        y_offset -= input_spacing

    y_offset = 8
    for var_id, expr, _, _ in out_vars:
        ax.add_patch(patches.Ellipse((11, y_offset), 2, 1, linewidth=1, edgecolor='black', facecolor='lightcoral'))
        ax.text(11, y_offset, expr, ha='center', va='center', fontsize=10)
        node_positions[var_id] = (11, y_offset)
        y_offset -= input_spacing

    for block_id, inputs in block_inputs.items():
        for ref_id, neg in inputs:
            x_start, y_start = node_positions[ref_id]
            x_end, y_end = node_positions[block_id]
            ax.annotate('', xy=(x_end, y_end), xytext=(x_start, y_start),
                        arrowprops=dict(arrowstyle="->", lw=1, color='black'))

    for out_id, ref_id in out_connections.items():
        x_start, y_start = node_positions[ref_id]
        x_end, y_end = node_positions[out_id]
        ax.annotate('', xy=(x_end, y_end), xytext=(x_start, y_start),
                    arrowprops=dict(arrowstyle="->", lw=1, color='black'))

    ax.text(12, y_offset + 0.5, 'Output', ha='center', va='center', fontsize=10)

    if save_path:
        plt.savefig(save_path, format='png', bbox_inches='tight', dpi=300)
        plt.close(fig)

# ---------------- Boolean Expression Builder ----------------
def build_expression(node_id, in_vars_dict, blocks_dict, block_inputs):
    if node_id in in_vars_dict:
        return in_vars_dict[node_id]
    if node_id in blocks_dict:
        block_type = blocks_dict[node_id].upper()
        inputs = block_inputs.get(node_id, [])
        input_exprs = []
        for ref_id, is_neg in inputs:
            sub_expr = build_expression(ref_id, in_vars_dict, blocks_dict, block_inputs)
            if is_neg:
                sub_expr = f"not ({sub_expr})"
            input_exprs.append(sub_expr)
        if block_type == "AND":
            return "(" + " and ".join(input_exprs) + ")"
        elif block_type == "OR":
            return "(" + " or ".join(input_exprs) + ")"
        elif block_type == "XOR":
            return "(" + " ^ ".join(input_exprs) + ")"
        else:
            return f"{block_type}(" + ", ".join(input_exprs) + ")"
    if DEBUG:
        print(f"[DEBUG] Unknown reference: {node_id} (not in inputs or blocks)")
    return f"UNKNOWN({node_id})"

# ---------------- Main POU Parser ----------------
def parse_pou(pou):
    blocks, in_vars, out_vars = [], [], []
    in_vars_dict, out_vars_dict, blocks_dict, block_inputs, out_connections = {}, {}, {}, {}, {}

    for block in pou.findall(".//block"):
        block_id = block.attrib['localId']
        type_name = block.attrib['typeName']
        blocks.append((block_id, type_name, 0, 0))
        blocks_dict[block_id] = type_name
        inputs = []
        for input_var in block.findall(".//inputVariables/variable"):
            conn = input_var.find("connectionPointIn/connection")
            if conn is not None:
                ref_id = conn.attrib['refLocalId']
                is_neg = input_var.attrib.get("negated", "false") == "true"
                inputs.append((ref_id, is_neg))
        block_inputs[block_id] = inputs

    for var in pou.findall(".//inVariable"):
        var_id = var.attrib['localId']
        expr = var.find("expression").text
        in_vars.append((var_id, expr, 0, 0))
        in_vars_dict[var_id] = expr

    for var in pou.findall(".//outVariable"):
        var_id = var.attrib['localId']
        expr = var.find("expression").text
        out_vars.append((var_id, expr, 0, 0))
        out_vars_dict[var_id] = expr
        conn = var.find("connectionPointIn/connection")
        if conn is not None:
            ref_id = conn.attrib['refLocalId']
            out_connections[var_id] = ref_id

    return blocks, in_vars, out_vars, block_inputs, out_connections, in_vars_dict, out_vars_dict, blocks_dict

# ---------------- Function to Extract 61850 Address ----------------
def extract_61850_address(variable_elem):
    try:
        documentation = variable_elem.find('.//documentation')
        if documentation is not None:
            xhtml_elem = documentation.find('.//xhtml')
            if xhtml_elem is not None and xhtml_elem.text:
                address = xhtml_elem.text.strip()
                if '/' in address or '.' in address:
                    return address
    except Exception as e:
        if DEBUG:
            print(f"[DEBUG] Error extracting address for variable {variable_elem.attrib.get('name', 'UNKNOWN')}: {e}")
    return ""

# ---------------- Main Script ----------------
def main():
    root = tk.Tk()
    root.withdraw()
    file_path = filedialog.askopenfilename(title="Select PLCOpen XML File", filetypes=[("XML files", "*.xml")])
    if not file_path:
        print("No file selected.")
        return

    tree = ET.parse(file_path)
    tree = strip_namespace(tree)
    root_elem = tree.getroot()
    pous = root_elem.findall(".//pou")
    project_name = os.path.splitext(os.path.basename(file_path))[0]
    timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
    folder_name = f"{project_name}_Export_{len(pous)}POUs_{timestamp}"
    export_folder = os.path.join(os.getcwd(), folder_name)
    os.makedirs(export_folder, exist_ok=True)

    pdf_path = os.path.join(export_folder, f"{project_name}_FBD_Documentation.pdf")
    doc = SimpleDocTemplate(pdf_path, pagesize=A4)
    styles = getSampleStyleSheet()
    story = [Paragraph("<b>Table of Contents</b>", styles['Heading1'])]

    for i, pou in enumerate(pous, start=1):
        pou_name = pou.attrib['name']
        story.append(Paragraph(f"{i}. {pou_name}", styles['Normal']))
    story.append(PageBreak())

    for pou in pous:
        pou_name = pou.attrib['name']
        if DEBUG:
            print(f"[DEBUG] Processing POU: {pou_name}")
        story.append(Paragraph(f"<b>POU: {pou_name}</b>", styles['Heading2']))
        blocks, in_vars, out_vars, block_inputs, out_connections, in_vars_dict, out_vars_dict, blocks_dict = parse_pou(pou)

        png_path = os.path.join(export_folder, f"{pou_name}_diagram.png")
        generate_matplotlib_diagram(pou_name, blocks, in_vars, out_vars, block_inputs, out_connections, save_path=png_path)

        if DEBUG:
            print(f"POU: {pou_name} Boolean Expressions:")
        boolean_expressions = []
        for out_id, src_block in out_connections.items():
            if DEBUG:
                print(f"[DEBUG] Building expression for output '{out_vars_dict.get(out_id, 'UNKNOWN')}' from block {src_block}")
            expr = build_expression(src_block, in_vars_dict, blocks_dict, block_inputs)
            boolean_expressions.append(expr)
            if DEBUG:
                print(f"{out_vars_dict[out_id]} = {expr}")

        img_buf = BytesIO()
        generate_matplotlib_diagram(pou_name, blocks, in_vars, out_vars, block_inputs, out_connections, save_path=img_buf)
        img_buf.seek(0)
        story.append(Image(img_buf, width=6.5 * inch, height=4.5 * inch))
        story.append(Spacer(1, 0.2 * inch))

        in_vars_elements = [variable_elem for variable_elem in pou.findall(".//interface//inputVars//variable")]
        out_vars_elements = [variable_elem for variable_elem in pou.findall(".//interface//outputVars//variable")]

        control_vars = [v.attrib['name'] for v in in_vars_elements]
        assess_vars = [v.attrib['name'] for v in out_vars_elements]
        control_addresses = [extract_61850_address(variable_elem) for variable_elem in in_vars_elements]
        assess_addresses = [extract_61850_address(variable_elem) for variable_elem in out_vars_elements]

        # Ensure equal lengths for all columns
        max_len = max(len(control_vars), len(assess_vars), len(boolean_expressions))
        control_vars += [''] * (max_len - len(control_vars))
        assess_vars += [''] * (max_len - len(assess_vars))
        boolean_expressions += [''] * (max_len - len(boolean_expressions))
        control_addresses += [''] * (max_len - len(control_addresses))
        assess_addresses += [''] * (max_len - len(assess_addresses))

        df = pd.DataFrame({
            "CONTROL": control_vars,
            "ASSESS": assess_vars,
            "LOGIC": boolean_expressions,
            "CONTROL_ADDRESS": control_addresses,
            "ASSESS_ADDRESS": assess_addresses
        })

        excel_path = os.path.join(export_folder, f"{pou_name}_IO_List.xlsx")
        df.to_excel(excel_path, index=False)

        story.append(Paragraph("<b>I/O Table:</b>", styles['Heading3']))
        data = [["CONTROL", "ASSESS", "LOGIC", "CONTROL_ADDRESS", "ASSESS_ADDRESS"]] + df.values.tolist()
        table = Table(data, colWidths=[2.5 * inch, 2.5 * inch, 2.5 * inch, 2.5 * inch, 2.5 * inch])
        table.setStyle(TableStyle([('BACKGROUND', (0, 0), (-1, 0), colors.lightgrey),
                                   ('GRID', (0, 0), (-1, -1), 0.5, colors.black)]))
        story.append(table)
        story.append(PageBreak())

    doc.build(story)

    print(f"\nPDF saved to: {pdf_path}")
    print(f"Export folder: {export_folder}")
    print("Use the files generated here as a reference for filling in the information needed in the next prompts.")

if __name__ == "__main__":
    main()
