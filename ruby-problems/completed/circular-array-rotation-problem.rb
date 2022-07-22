# https://www.hackerrank.com/challenges/circular-array-rotation/problem?isFullScreen=true

# INSTRUCTIONS
# John Watson knows of an operation called a right circular rotation on an array of integers. One rotation operation moves the last array element to the first position and shifts all remaining elements right one. To test Sherlock's abilities, Watson provides Sherlock with an array of integers. Sherlock is to perform the rotation operation a number of times then determine the value of the element at a given position.
# For each array, perform a number of right circular rotations and return the values of the elements at the given indices.

# STEPS
# Define a method that accepts three inputs, a (which is the array), k (which is the integer amount of rotations to be enacted on the array) and queries (which is an array of indices to be used to find array values after rotations are completed)
# Write a loop that runs k amount of times
  # Use pop() method to remove the last value in array a
  # Use insert method to add that value to the front of the array
# Return array a values at indices specified by queries input -- which will require another loop
# In this loop
  # Loop through each value in the queries array and return array a values using the values in queries array as the indices

# SOLUTIONS 1 - SOLVES ALL TEST CASES
# def circlular_rotation(a, k, queries)
#   k.times do
#     last_value = a.pop()
#     a = a.insert(0, last_value)
#   end
#   i = 0
#   b = []
#   while i < queries.length
#     queries
#     b << a[queries[i]]
#     i += 1
#   end
#   b
# end

# SOLUTION 2 - SOLVES ALL TEST CASES
# def circlular_rotation(a, k, queries)
#   k.times do
#     a.prepend(a.last)
#     a.pop
#   end
#   i = 0
#   b = []
#   while i < queries.length
#     queries
#     b << a[queries[i]]
#     i += 1
#   end
#   b
# end

# SOLUTION 3
def circlular_rotation(a, k, queries)
  k.times do
    p a.unshift(a.last).pop
  end
  i = 0
  b = []
  while i < queries.length
    queries
    b << a[queries[i]]
    i += 1
  end
  b
end

p circlular_rotation([1, 2, 3], 2, [0, 1, 2])
p circlular_rotation([3, 4, 5], 2, [1, 2])

# use unshift function later to refactor
# can also use delete(value) and prepend(value)