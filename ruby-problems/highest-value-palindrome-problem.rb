# https://www.hackerrank.com/challenges/three-month-preparation-kit-richie-rich/problem?h_r=internal-search

# INSTRUCTIONS
  # Palindromes are strings that read the same from the left or right, for example madam or 0110.
  # You will be given a string representation of a number and a maximum number of changes you can make. Alter the string, one digit at a time, to create the string representation of the largest number possible given the limit to the number of changes. The length of the string may not be altered, so you must consider 0's left of all higher digits in your tests. For example 0110 is valid, 0011 is not.
  # Given a string representing the starting number, and a maximum number of changes allowed, create the largest palindromic string of digits possible or the string '-1' if it is not possible to create a palindrome under the contstraints.

# STEPS
# Using two indexes, loop through the input array from left and right
  # When a left an right value do not match, change one value to make it match. Record this change and at what index using a separate array that we define as empty to start
  # If the input array has an odd number of values, stop when the two indexes are equal. If the array has an even number of values, stop when they are 1 integer apart.
# If the nunber of changes made to create a palindrom exceeds the number allowed, return -1. Otherwise, return the palindrome.  