#!/usr/bin/env python3
"""
This script was completely done by chatGPT by asking a question:
'Hi, may I ask you for an example of usage of Python3 library openpyscad?
I would like an example where you'll make a phone holder for a phone with dimensions 167.2 x 76.4 x 9 mm'
"""
from openpyscad import *

# Set the dimensions of the phone
phone_width = 167.2
phone_depth = 76.4
phone_height = 9

# Calculate the half-dimensions of the phone
half_phone_width = phone_width / 2
half_phone_depth = phone_depth / 2
half_phone_height = phone_height / 2

# Create a cube that represents the phone, centered within the holder
phone = Cube([phone_width, phone_depth, phone_height], center=True)

# Create a cube that represents the phone holder
holder_width = phone_width + 20
holder_depth = phone_depth + 20
holder_height = phone_height + 20
holder = Cube([holder_width, holder_depth, holder_height])

# Subtract the phone from the holder to create a hollow space for the phone to fit in
holder = holder - phone

# Make the phone holder more rounded by intersecting a sphere with the holder
fillet_radius = 5
sphere = Sphere(fillet_radius)
rounded_holder = holder & sphere

# Add slots to hold the phone in place
slot_width = 5
slot_depth = 5
slot_height = phone_height + 10
slot_spacing = 20
slot1 = Cube([slot_width, slot_depth, slot_height], center=True)
slot2 = Cube([slot_width, slot_depth, slot_height], center=True)
slot1 = slot1.translate([-(phone_width / 2) - (slot_spacing / 2), 0, 0])
slot2 = slot2.translate([(phone_width / 2) + (slot_spacing / 2), 0, 0])
rounded_holder = rounded_holder + slot1 + slot2

# Save the resulting SCAD file to a file called "phone_holder.scad"
with open('phone_holder.scad', 'w') as f:
    f.write(str(rounded_holder))

