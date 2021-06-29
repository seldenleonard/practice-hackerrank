# A video player plays a game in which the character competes in a hurdle race. Hurdles are of varying heights, and the characters have a maximum height they can jump. There is a magic potion they can take that will increase their maximum jump height by  unit for each dose. How many doses of the potion must the character take to be able to jump all of the hurdles. If the character can already clear all of the hurdles, return .

# STEPS
# Create a function that accepts an integer ("height") and an array ("k")
# Define a "maxHeight" variable, which will be the largest integer in the array
# Set maxHeight to the first value in the array
# Iterate throught the array and if maxHeight is less than any value in the array, set maxHeight equal to that value
# Define the variable "doses" as k - maxHeight
# Create an if statement where if k is greater than or equal to maxHeight, return zero. If k is less than maxHeight, then return the value of "doses"