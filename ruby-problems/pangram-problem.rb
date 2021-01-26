# A pangram is a string that contains every letter of the alphabet. Given a sentence determine whether it is a pangram in the English alphabet. Ignore case. Return either pangram or not pangram as appropriate.

# STEPS
# Create a method that takes in a string
# Set alphabet = an array with all the letters of the alphabet
# Create two indexes, one for alphabet array and one for input
# Iterate once through alphabet for every time we iterate through all of input
# Compare the current alphabet[index] to each value in the input
# If all values in alphabet array match values in from the input, then return "pangram". If not, return "not pangram"

def pangrams(s)
  alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  s = s.gsub(/\s+/, "").downcase.split("")
  # Note: the forward slashes denotes a "regular expression", and the "\s+" refers to a space. Then the empty quotes tell us that we want to replace the space with nothing.
  index1 = 0
  index2 = 0
  p alphabet
  p s
end

pangrams("Hi im Selden")



# Note: the problem parameters say s can only include letters and spaces, but if we were to have to account for punctuation as well, we would use "a.gsub!(/[!@%&"]/,'')"