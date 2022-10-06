# https://www.hackerrank.com/challenges/append-and-delete/problem?isFullScreen=true

# You have two strings of lowercase English letters. You can perform two types of operations on the first string:

# Append a lowercase English letter to the end of the string.
# Delete the last character of the string. Performing this operation on an empty string results in an empty string.
# Given an integer, k, and two strings, s and t, determine whether or not you can convert s to t by performing exactly k of the above operations on s. If it's possible, print Yes. Otherwise, print No.

# Example
# s = [a, b, c]
# t = [d, e, f]
# k = 6

# STEPS
# Define a method that accepts two arrays and an integer
# If k is greater than or equal to s.length + t.length, return Yes
# If k is less than s.length + t.length
  # Define a variable called ops that will be used as the calculated minimum number of operations neccessary to convert s to t. Set it equal to s.length + t.length
  # Define an index variable
  # Using a while loop, iterate through s and t using the same index, comparing s[i] to t[i] until s[i] != t[i]
    # For each instance where s[i] == t[i], reduce ops by 2
  # If ops == k OR ops > k by an interval of 2 (so it could be greater by 2, 4, 6, 8, 10, etc.)
    # return Yes
  # Else
    # return NO