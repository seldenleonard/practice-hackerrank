# https://www.hackerrank.com/challenges/permutation-equation/problem

# INSTRUCTIONS
# Given a sequence of n integers, p(1), p(2),..., p(n) where each element is distinct and satisfies 1 <= p(x) <= n. For each x where 1 <= x <= n, that is x increments from 1 to n, find any integer y such that p(p(y)) = xx and keep a history of the values of y in a return array.

# STEPS
# Clarified Instructions: Given a sequence of positive, distinct integers do the following: using the values in the input array, and in the act of counting from 1 to the max value in ascending order, take each index value and append it to a new array, with 1 (not 0) as the base index. Then return the array of indexes.

# Addendum to Steps
# What I was missing before is this: iterate through the input array using 1 as a base index until I get to point where my index equals the highest value in the array
# Using my index of 1, i look at the first element in the array. Say that that my input array is [5, 2, 1, 3, 4]. So my array value at index 1 is 5. Because it's 5, I take the fifth element in the array (whatever is at index 5), which is 4, and THAT 4 is the integer I append my indices array with. Then using that 4, i find out what number is at index 4, which is 3. So i append my indices array with 3. Then I find out what is at index 3.

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

# def sequence_equation(p)
#   i = 0
#   indices = []
#   counter = 1
#   until counter > p.max
#     until p[i] == counter
#       i += 1
#     end
#     indices.append(i + 1)
#     counter += 1
#     i = 0
#   end
#   indices
# end

def sequence_equation(p)
  i = 0
  indices = []
  until i == p.max
    counter = p[i - 1]
    indices.append(p[counter])
    i = p[counter]
  end
  indices
end

p sequence_equation([2, 3, 1])
p sequence_equation([4, 3, 5, 1, 2])