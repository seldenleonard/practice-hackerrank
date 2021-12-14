# https://www.hackerrank.com/challenges/hackerrank-in-a-string/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign

# INSTRUCTIONS
# We say that a string contains the word hackerrank if a subsequence of its characters spell the word hackerrank. RemeMber that a subsequence maintains the order of characters selected from a sequence.
# More formally, let p[0], p[1],..., p[9] be the respective indices of h, a, c, k, e, r, r, a, n, k in string s. If p[0] < p[1] < p[2] < ... < p[9] is true, then s contains hackerrank.
# For each query, print YES on a new line if the string contains hackerrank, otherwise, print NO.

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
      while stringIndex > s.length
        if stringIndex == letters.length - 1
          return "NO"
          break
        elsif lettersIndex == letters.length - 1
          return "YES"
          break
        else
          
          stringIndex += 1
        end
        lettersIndex += 1
      end
    end
end