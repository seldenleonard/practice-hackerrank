# https://www.hackerrank.com/challenges/cut-the-sticks/problem

# INSTRUCTIONS
# You are given a number of sticks of varying lengths. You will iteratively cut the sticks into smaller sticks, discarding the shortest pieces until there are none left. At each iteration you will determine the length of the shortest stick remaining, cut that length from each of the longer sticks and then discard all the pieces of that shortest length. When all the remaining sticks are the same length, they cannot be shortened so discard them.
# Given the lengths of n sticks, print the number of sticks that are left before each iteration until there are none left.

# STEPS
# Define a method that accepts an array
# Order array from smallest to largest
# Write a loop that iterates through the array
  # Loop through array, print array.length, subtract array[0] from each value in the array, then remove any zero values
  # When array.length = 0, break the loop

# TRY WITH UNTIL LOOP AFTER

def cut_the_sticks(sticks)
  sorted_sticks = sticks.sort
  while true # or until false
    p sorted_sticks.length
    sorted_sticks = sorted_sticks.map do |stick|
      stick -= sorted_sticks[0]
    end
    sorted_sticks.delete(0)
    if sorted_sticks.length == 0
      break
    end
  end
end

cut_the_sticks([5, 4, 4, 2, 2, 8])