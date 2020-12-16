# Given a square matrix, calculate the absolute difference between the sums of its diagonals.

# STEPS
# Create a method that takes in 3 arrays
# Use an index that ends at the length or any single array (because all arrays are same length because it is a square matrix)
# To get the sum of the first diagonal, set index to zero, then add up the value of each array at the index value, and have the index increase by one for each array it evaluates.
# To get sum of the second diagonal, set index to length of any one of the input arrays, then add up the value of each array at the index value, and have the index decrease by one each for array it evaluates.
# Store the two sums in variables, then subtract the smaller value from the larger value