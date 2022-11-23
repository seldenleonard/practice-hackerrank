# https://www.hackerrank.com/challenges/permutation-equation/problem

# INSTRUCTIONS
# Given a sequence of n integers, p(1), p(2),..., p(n) where each element is distinct and satisfies 1 <= p(x) <= n. For each x where 1 <= x <= n, that is x increments from 1 to n, find any integer y such that p(p(y)) = xx and keep a history of the values of y in a return array.

# STEPS
# Clarified Instructions: Given a sequence of positive, distinct integers do the following: using the values in the input array, and in the act of counting from 1 to the max value in ascending order, take each index value and append it to a new array, with 1 (not 0) as the base index. Then return the array of indexes.
# Start by defining a method that accepts an array
# Define an index and set it equal to zero
# Define an empty array called 'indices'
# Define a variable called 'counter' and set it equal to 1
# Loop through the input array until counter variable is greater than array.max
  # Using a nested loop, loop through the array using the index until array[index] is equal to the counter variable
    # Increase index by 1
  # Then append the indices array with the index value + 1
  # Increase the counter variable by 1
  # Reset index to 0

def sequence_equation(p)
  i = 0
  indices = []
  counter = 1
  while counter <= p.max
    until p[i] == counter
      i += 1
    end
    indices << i + 1
    counter += 1
    i = 0
  end
  indices
end

p sequence_equation([2, 3, 1])