# Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero. Print the decimal value of each fraction on a new line with  places after the decimal.
# Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.

# STEPS
# Create method that takes in an array
# Set a variable called "denominator" to length of the array
# Set a variable called "negative_numerator" equal to zero
# Set a variable called "positive_numerator" equal to zero
# Set a variable called "zero_numerator" equal to zero
# Create an index
# Loop through the array and at each value evaluate whether it is positive, negative, or zero (use "if" "elsif" "else"). Add 1 to the whichever of the three numerator variables the array value falls under.
# return each of the three numerator variable each divided by the denominator variable. (could also not even have a denominator variable at all and just use array.length)

def plus_minus(arr)
  denominator = arr.length
  negative_numerator = 0
  positive_numerator = 0
  zero_numerator = 0
  i = 0
end

plus_minus([-4, 3, -9, 0, 4, 1])