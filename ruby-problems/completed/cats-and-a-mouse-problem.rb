# https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

# INSTRUCTIONS
# Two cats and a mouse are at various positions on a line. You will be given their starting positions. Your task is to determine which cat will reach the mouse first, assuming the mouse does not move and the cats travel at equal speed. If the cats arrive at the same time, the mouse will be allowed to move and it will escape while they fight.

# You are given q queries in the form of x, y, and z representing the respective positions for cats A and B, and for mouse C. Complete the function catAndMouse to return the appropriate answer to each query, which will be printed on a new line.

# If cat A catches the mouse first, print Cat A.
# If cat B catches the mouse first, print Cat B.
# If both cats reach the mouse at the same time, print Mouse C as the two cats fight and mouse escapes.

# STEPS
# Create a function that accepts an input of three integers, x (refers to Cat A position), y (refers to Cat B position), and z (refers to Mouse C position)
# Compare the following to determine the output:
# If the absolute value of the difference between x and z is smaller than the difference between y and z, Cat A catches the mouse first, so print Cat A.
# If the absolute value of the difference between y and z is smaller than the difference between x and z, Cat A catches the mouse first, so print Cat A.
# If the absolute value of the difference between y and z is equal to the difference between x and z, Mouse C escapes, so print Mouse C.

# FIRST SOLUTION -- WORKS PERFECTLY FINE
# def catAndMouse(x, y, z)
#   if z > x
#     distanceCatA = z - x
#   else
#     distanceCatA = x - z
#   end
#   if z > y
#     distanceCatB = z - y
#   else
#     distanceCatB = y - z
#   end
#   if distanceCatA < distanceCatB
#     p "Cat A"
#   elsif distanceCatA > distanceCatB
#     p "Cat B"
#   else
#     p "Mouse C"
#   end
# end

# catAndMouse(1, 2, 3)

# SECOND SOLUTION -- WORKS AND IS MORE DRY THAN FIRST SOLUTION
def catAndMouse(x, y, z)
    distanceCatA = (z - x).abs
    distanceCatB = (z - y).abs
  if distanceCatA < distanceCatB
    p "Cat A"
  elsif distanceCatA > distanceCatB
    p "Cat B"
  else
    p "Mouse C"
  end
end

catAndMouse(1, 2, 3)