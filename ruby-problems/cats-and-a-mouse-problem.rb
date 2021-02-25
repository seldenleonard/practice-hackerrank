# https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

# STEPS
# Create a function that accepts an input of three integers, x (refers to Cat A position), y (refers to Cat B position), and z (refers to Mouse C position)
# Compare the following to determine the output:
# If the absolute value of the difference between x and z is smaller than the difference between y and z, Cat A catches the mouse first, so print Cat A.
# If the absolute value of the difference between y and z is smaller than the difference between x and z, Cat A catches the mouse first, so print Cat A.
# If the absolute value of the difference between y and z is equal to the difference between x and z, Mouse C escapes, so print Mouse C.

def catAndMouse(x, y, z)
  if z > x
    distanceCatA = z - x
  else
    distanceCatA = x - z
  end
  if z > y
    distanceCatB = z - y
  else
    distanceCatB = y - z
  end
  if distanceCatA < distanceCatB
    p "Cat A"
  elsif distanceCatA > distanceCatB
    p "Cat B"
  else
    p "Mouse C"
  end
end