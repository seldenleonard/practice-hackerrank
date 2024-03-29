# https://www.hackerrank.com/challenges/the-hurdle-race/problem

# INSTRUCTIONS
# A video player plays a game in which the character competes in a hurdle race. Hurdles are of varying heights, and the characters have a maximum height they can jump. There is a magic potion they can take that will increase their maximum jump height by 1 unit for each dose. How many doses of the potion must the character take to be able to jump all of the hurdles. If the character can already clear all of the hurdles, return 0.

# STEPS
# Create a function that accepts an integer ("height") and an array ("k")
# Define a "max_height" variable, which will be the largest integer in the array
# Set max_height initially, to the first value in the array
# Create an index ("i") to iterate through the array, and set it to 1, which will correspond to the second value of the array, height[1]
# Iterate through the array and if max_height is less than any value in the array, set max_height equal to that value
# Define the variable "doses" as max_height - k
# Create an if statement where if k is greater than or equal to max_height, return zero. If k is less than max_height, then return the value of "doses"

def hurdle_race(height, k)
  max_height = height[0]
  i = 1
  while i < height.length
    if max_height < height[i]
      max_height = height[i]
    end
    i += 1
  end
  doses = max_height - k
  if k >= max_height
    p 0
  else
    p doses
  end
end

hurdle_race([1, 6, 3, 5, 2], 4)
hurdle_race([9, 10, 7, 3, 8], 12)