# https://www.hackerrank.com/challenges/equality-in-a-array/problem?isFullScreen=true

# INSTRUCTIONS
# Given an array of integers, determine the minimum number of elements to delete to leave only elements of equal value.
  # Example:
    # arr = [1, 2, 2, 3]
# Delete the 2 elements 1 and 3 leaving arr = [2, 2]. If both twos plus either the 1 or the 3 are deleted, it takes 3 deletions to leave either [3] or [1]. The minimum number of deletions is 2.

# Function Description:
# Complete the equalizeArray function in the editor below.
# equalizeArray has the following parameter(s):
  # int arr[n]: an array of integers
# Returns:
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
  # If sorted_arr[i] == current_value
    # current_count += 1
  # Else
    # If current_count > max_count
      # max_value = current_value
      # max_count = current_count
    # current_value = sorted_arr[i]
    # current_count = 1
# Return sorted_arr.length - max_count

# REFACTORING IDEA
# Get rid of the .sort function and either sort it manually or solve without sorting -- one way could possibly be through converting to a hash that counts occurences
# Technically to solve this algorithm my max_value variable is unnecessary, but I kind of like it in my initial attempt to solve because it provides some useful insight into how the method is functioning and could be neccessary for extending this method beyond the initial prompt (and does so without significant extraneous code)

def equalize_array(arr)
  sorted_arr = arr.sort
  current_value = sorted_arr[0]
  current_count = 1
  max_value = sorted_arr[0]
  max_count = 1
  i = 1
  while i < sorted_arr.length - 1
    if sorted_arr[i] == current_value
      current_count += 1
    else
      if current_count > max_count
        max_value = current_value
        max_count = current_count
      end
      current_value = sorted_arr[i]
      current_count = 1
    end
    i += 1
  end
  sorted_arr.length - max_count - 1
end

p equalize_array([1, 2, 2, 3])
p equalize_array([4, 7, 9, 3, 2, 5, 5, 7, 4, 7])