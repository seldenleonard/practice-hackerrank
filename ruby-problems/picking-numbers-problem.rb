# https://www.hackerrank.com/challenges/picking-numbers/problem?isFullScreen=true

# INSTRUCTIONS
# Given an array of integers, find the longest subarray where the absolute difference between any two elements is less than or equal to 1.
  # Example: a = [1, 1, 2, 2, 4, 4, 5, 5, 5]
  # There are two subarrays meeting the criterion: [1, 1, 2, 2] and [4, 4, 5, 5, 5]. The maximum length subarray has 5 elements.

# STEPS
# Define a method that accepts an array
# Sort the array from smallest to largest
# Define a variable called "starting_value" to equal the first value of the input array
# Iterate through the array and index
# Write a loop that ends when the index is array.length - 2
  # If number[index = 0] or number [index = 1] < 0, then we shove the number into a separate array
# use a counter that gets replaced when there is a count larger than it
# starting at index zero, use a second a index to iterate forward until its value is greater than index zero + 1. The difference between index zero and the second index is our count.
# Then we iterate the first index to the first value that is greater than index zero.

def contiguous(ar)
  index = 0
  current_counter = 1
  max_counter = 0

  ar.sort!
  
  while index <= ar.length - 2
    if (ar[index] - ar[index + 1]).abs() <= 1 
      current_counter += 1

    else
      if current_counter > max_counter
        max_counter = current_counter
      end
      current_counter = 1

    end
    index += 1
  end
  
  if current_counter > max_counter
    max_counter = current_counter
  end
  
  max_counter
end

p contiguous([1, 1, 2, 2, 4, 4, 5, 5, 5])
p contiguous([4, 6, 5, 3, 3, 1])

# We misunderstood the problem, it should actually be evaluating the largest subarray of numbers that are only 1 integer apart from the first to last value in the subarray, as opposed to each value in the subarray being only 1 integer apart