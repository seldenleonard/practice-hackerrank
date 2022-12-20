# https://www.hackerrank.com/challenges/repeated-string/problem?isFullScreen=true

# INSTRUCTIONS
# There is a string, s, of lowercase English letters that is repeated infinitely many times. Given an integer, n, find and print the number of letter a's in the first  letters of the infinite string.
  # Example
  # s = 'abcac'
  # n = 10
# The substring we consider is abcacabcac, the first 10 characters of the infinite string. There are 4 occurrences of a in the substring.

# STEPS
# Define a method that accepts a string s and an integer n
# Define a variable 'counter' and set it equal to zero
# Loop through s, n times. At each value, if the value of s[n] == "a", then counter += 1
# Return counter