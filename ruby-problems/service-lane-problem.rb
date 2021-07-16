# A driver is driving on the freeway. The check engine light of his vehicle is on, and the driver wants to get service immediately. Luckily, a service lane runs parallel to the highway. It varies in width along its length.
# You will be given an array of widths at points along the road (indices), then a list of the indices of entry and exit points. Considering each entry and exit point pair, calculate the maximum size vehicle that can travel that segment of the service lane safely.

# STEPS
# Create a method that accepts:
# --- Width: An array of integers
# --- Cases: An array of arrays, each sub-array containing 2 integer values
# Using each pair of integers in each subarray as index values for the width array, return the smallest value in the width array, inside of that index range