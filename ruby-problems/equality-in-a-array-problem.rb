# https://www.hackerrank.com/challenges/equality-in-a-array/problem?isFullScreen=true

# INSTRUCTIONS
# Given an array of integers, determine the minimum number of elements to delete to leave only elements of equal value.
  # Example
  # arr = [1, 2, 2, 3]

# Delete the 2 elements 1 and 3 leaving arr = [2, 2]. If both twos plus either the 1 or the 3 are deleted, it takes 3 deletions to leave either [3] or [1]. The minimum number of deletions is 2.

# Function Description
# Complete the equalizeArray function in the editor below.
# equalizeArray has the following parameter(s):
  # int arr[n]: an array of integers

# Returns
  # int: the minimum number of deletions required

# STEPS
# Define a method that accepts an array
# Define a variable called sorted_arr, set it equal to arr.sort
# Define a variable called current_value, set it equal to sorted_arr[0]
# Define a variable called current_count, set it equal to 1
# Define a variable called max_value, set it equal to sorted_arr[0]
# Define a variable called max_count, set it equal to 1
# Define an index variable i, set it equal to 1
# Loop through the values in sorted_arr starting at sorted_arr[i]
  # If sorted_arr[1] == current_value
    # current_count += 1
  # Else
    # If current_count > max_count
      # max_value = current_value
      # max_count = current_count
      # current_value = sorted_arr[i]
      # current_count = 0
# Return sorted_arr.length - max_count