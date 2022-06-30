# https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

# INSTRUCTIONS
# Given an array of integers and a positive integer k, determine the number of (i, j) pairs where i < j and ar[i] + ar[j] is divisible by k.

# STEPS
# Create a nested loop with two indexes to ensure that while one of the indexes is at each specific value, the other index iterates through all following array values 
# Create a counter to keep the numbers of pairs divisible by 'k'
# Sort the array first from lowest to highest (using .sort method)
# The first index (index1) starts at zero
# Create a 'while' loop: index 1 < length - 1
# The second index (index2) starts at index1 + 1
  # Use index1 to loop through and test it is functioning properly by printing each integer (then remove printing each integer from final solution)
  # Nested within the first loop, create a 2nd 'while' loop: index2 <= length
    # Add integer at index1 to integer at index2
    # Print sum to test if it is functioning properly (then remove printing sum from final solution)
    # Create 'if' statement conditional: if the sum / k % 0, then we add one to the established ‘counter’
    # Add one to index2
# index1 + 1
# p counter

# Hackerrank Supplied Variables:
# n = integer length of array
# ar = array of integers
# k = integer

def divisible_sum_pairs(n, k, ar)
  ar.sort!
  index1 = 0
  counter = 0
  while index1 < n - 1
    index2 = index1 + 1
    sum = 0
    while index2 < n
      sum = ar[index1] + ar[index2]
      if sum % k == 0
        counter += 1
      end
      index2 += 1
    end
    index1 += 1
  end
  p counter
end

divisible_sum_pairs(6, 3, [1, 3, 2, 6, 1, 2])