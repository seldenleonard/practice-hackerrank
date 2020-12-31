# https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

# STEPS
# Will need a nested loop with two indexes to ensre 1 is ahead of the other
# Build a counter to keep the numbers of pairs divisible by ‘k’
# sort the array first form lowest to highest (.sort)
# index 1 starts at zero
# Create a while loop index 1 < length - 1
# index 2 start at index1 + 1
  # loop and print each integer
  # create 2d loop index2 <= length
    # add integer at index1 to intger at index2
    # print sum
    # conditional if the sum / k % 0 then we add one to the established ‘counter’
    # add one to index 2
# index1 + 1
#  p counter
# n = integer length of array
# ar = array of integers
# k = integer
