#!/usr/bin/env python

import textfsm
from pprint import pprint

# Create a file handle to the TextFSM Template .tpl file:
template_file = "ex2_show_int_status.tpl"
template = open(template_file)

# Read in the 'show int status' output from a text file:
with open("ex2_show_int_status.txt") as f:
	raw_text_data = f.read()

# Create the Records table from the template:
re_table = textfsm.TextFSM(template)

# Parse the raw text from the text file into Records:
data = re_table.ParseText(raw_text_data)

# Close the file handle to the TextFSM Template .tpl file:
template.close()

# Create an empty list of dictionaries to store structured output from the parsed data:
structured_data = []
for record in data:
	record_dictionary = {
		"DUPLEX": record[3],
		"PORT_NAME": record[0],
		"PORT_TYPE": record[5],
		"SPEED": record[4],
		"STATUS": record[1],
		"VLAN": record[2]}
	structured_data.append(record_dictionary)

# Display the resulting list of dictionaries:
print()
pprint(structured_data)
print()
