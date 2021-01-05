# Given a square matrix, calculate the absolute difference between the sums of its diagonals.

# STEPS
# Create a method that takes in 3 arrays
# Use an index that ends at the length of any single array (because all arrays are same length because it is a square matrix)
# To get the sum of the first diagonal, set index to zero, then add up the value of each array at the index value, and have the index increase by one for each array it evaluates.
# To get sum of the second diagonal, set index to length of any one of the input arrays, then add up the value of each array at the index value, and have the index decrease by one each for array it evaluates.
# Store the two sums in variables, then subtract the smaller value from the larger value

def diagonal_difference(arr)
  i = 0
  i2 = arr.length - 1
  sum1 = 0
  sum2 = 0
  while i < arr.length
    sum1 += arr[i][i]
    sum2 += arr[i][i2]
    i += 1
    i2 -= 1    
  end
  p (sum1 - sum2).abs
end

diagonal_difference([[11, 2, 4], [4, 5, 6], [10, 8, -12]])