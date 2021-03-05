# https://www.hackerrank.com/challenges/hackerrank-in-a-string/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign


# STEPS
# Create a function that accepts string 's'
# Set a variable equal to an array containing each letter of the word 'hackerrank', in order
# Set two indexes equal to zero (one for string 's', and one for the letters array)
# Create two loops to iterate through string 's' and the letter array. Nest the loop using the index associated with string 's' inside of the loop using the index associated with the letter array.
# At each value in the letters array, iterate through string 's' until you find the matching letter.
# Then iterate one value forward in the letters array.
# Write an if statement, where if the string 's' index value reaches the length of string 's' before the letters array index reaches the length of the letters array, then return no. if vice versa, return yes.
# NOTE: Never reset either index. The index associated with string 's' can move several steps per each one step taken by the index associated with the letters array.

def hackerrankInString(s)
  letters = ["h", "a", "c", "k", "e", "r", "r", "a", "n", "k"]
  lettersIndex = 0
  stringIndex = 0
  while lettersIndex > letters.length
    
    lettersIndex += 1
  end
end