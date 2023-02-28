# https://www.hackerrank.com/challenges/magic-square-forming/problem?isFullScreen=true

# INSTRUCTIONS
# We define a magic square to be an n * n matrix of distinct positive integers from 1 to n^2 where the sum of any row, column, or diagonal of length n is always equal to the same number: the magic constant.
# You will be given a 3 * 3 matrix s of integers in the inclusive range [1, 9]. We can convert any digit a to any other digit b in the range [1, 9] at cost of |a - b|. Given s, convert it into a magic square at minimal cost. Print this cost on a new line.

# My Articulation of the Prompt
# To make more understandable: Essentially, I need to change numbers in the matrix to make it into a magic square, but for every value I change (say I need to change a 7 to a 3), I have to do 7 - 3, which equals 4, and then i take that 4 and that is my cost. Then when I change another value, i add that to the cost. The goal is to make the neccessary changes to have a magic square and do so for the lowest possible cost. Another note, all subtractions when changing values are absolute value, so if I need to change a 4 to a 6, I do 4 - 6, which equals -2, but because its asolute value, the -2 becomes +2, and my cost is therefore +2.
  # Different Combinations of Values in Each Array that must all be Equal:
    # Whether the sum of each array are all equal
    # Whether the sum of array1[0]. array2[1] and array3[2] is equal
    # Whether the sum of array3[0]. array2[1] and array1[2] is equal
    # Whether the sum of array1[0]. array2[0] and array3[0] is equal
    # Whether the sum of array1[1]. array2[1] and array3[1] is equal
    # Whether the sum of array1[2]. array2[2] and array3[2] is equal

# STEPS
# Define a method that accepts an array (of three arrays)
# Define a variable: cost = 0
# Define the following variables:
  # Define of variable: row_top = array1
  # Define of variable: row_middle = array2
  # Define of variable: row_botton = array3
  # Define of variable: diagonal_lr = array1[0],array2[1], array3[2]
  # Define of variable: diagonal_rl = array1[2],array2[1], array3[0]
  # Define of variable: column_left = array1[0],array2[0], array3[0]
  # Define of variable: column_middle = array1[1],array2[1], array3[1]
  # Define of variable: column_right = array1[2],array2[2], array3[2]
# Define an array that includes all the variables above (except cost)
# Compare each variable defined above, and separate into 2 arrays - based on whether or not they are equal to the magic number
  # magic_threes
  # not_magic_threes

def magic_square(s)
  cost = 0
  row_top = array1
  row_middle = array2
  row_botton = array3
  diagonal_lr = array1[0],array2[1], array3[2]
  diagonal_rl = array1[2],array2[1], array3[0]
  column_left = array1[0],array2[0], array3[0]
  column_middle = array1[1],array2[1], array3[1]
  column_right = array1[2],array2[2], array3[2]
  all_variables = [
    row_top, row_middle, row_botton,
    diagonal_lr, diagonal_rl,
    column_left, column_middle, column_right
  ]
  magic_threes = []
  not_magic_threes = []
end

p magic_square[[1, 2, 3], [3, 4, 3], [2, 3, 3]]
