# https://www.hackerrank.com/challenges/pangrams/problem

# A pangram is a string that contains every letter of the alphabet. Given a sentence determine whether it is a pangram in the English alphabet. Ignore case. Return either pangram or not pangram as appropriate.

# ----------------------------------

# ATTEMPT 1 - Unsuccessful/Unfinished

# STEPS
# Create a method that takes in a string
# Set alphabet as an array with all the letters of the alphabet
# Turn input string into an array, delete all spaces, and delete all non-unique letters
# Create two indexes, one for alphabet array and one for input
# Iterate once through alphabet for every time we iterate through all of input
# Compare the current alphabet[index] to each value in the input
# If all values in alphabet array match values in from the input, then return "pangram". If not, return "not pangram"

# def pangrams(s)
#   alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
#   s = s.gsub(/\s+/, "").downcase.split("").uniq.sort()
#   # Note: the forward slashes denotes a "regular expression", and the "\s+" refers to a space. Then the empty quotes tell us that we want to replace the space with nothing.
#   index1 = 0
#   index2 = 0
#   while index1 < alphabet.length
#       while index2 < s.length
#         if s[index2] === alphabet[index1]
#           p "match"
#         end
#         p s
#         index2 += 1
#       end
#     index1 += 1
#   end
#   # p alphabet
#   # p s
# end

# Note: the problem parameters say s can only include letters and spaces, but if we were to have to account for punctuation as well, we would use "a.gsub!(/[!@%&"]/,'')"

# ----------------------------------

# ATTEMPT 2 - Successful

# STEPS
# Create a method that takes in a string
# Set alphabet as an array with all the letters of the alphabet
# Turn s (the input string) into an array, delete all spaces, and delete all non-unique letters, then sort alphabetically.
# If s is equal to 26 (the length of the alphabet), then return "pangram". If not, return "not pangram"


def pangrams(s)
  s = s.gsub(/\s+/, "").downcase.split("").uniq.sort()
  if s.length === 26
    p "pangram"
  else
    p "not pangram"
  end
end


# Test - Input is not a Pangram
pangrams("We promptly judged antique ivory buckles for the prize")

# Test - Input is a Pangram
pangrams("We promptly judged antique ivory buckles for the next prize")