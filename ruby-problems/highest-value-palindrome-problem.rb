# https://www.hackerrank.com/challenges/three-month-preparation-kit-richie-rich/problem?h_r=internal-search

# INSTRUCTIONS
  # Palindromes are strings that read the same from the left or right, for example madam or 0110.
  # You will be given a string representation of a number and a maximum number of changes you can make. Alter the string, one digit at a time, to create the string representation of the largest number possible given the limit to the number of changes. The length of the string may not be altered, so you must consider 0's left of all higher digits in your tests. For example 0110 is valid, 0011 is not.
  # Given a string representing the starting number, and a maximum number of changes allowed, create the largest palindromic string of digits possible or the string '-1' if it is not possible to create a palindrome under the contstraints.

# STEPS -- to create a palindrome from input within the amount of changes allowed. STILL NEED TO ADD MORE TO MAKE the palindrome as large as possible
# Using two indexes, loop through the input integer from left and right simultaneously
# But if the number of changes made to create a palindrome exceeds the number allowed, return -1. Otherwise, return the palindrome.
  # When the left and right values do not match, change the left value to make it match. Record this change and at what index using a separate array that we define as empty to start
  # If the input array has an odd number of values, stop when the two indexes are equal. If the array has an even number of values, stop when they are 1 integer apart.

def highest_value_palindrome(s, k)
  s_string = s.to_s
  index_left = 0
  index_right = s_string.length - 1
  changes = 0
  if s_string.length.odd?
    while index_left != index_right # Instead of two separate while/until loops I could just do an OR || statement
      if s_string[index_left] != s_string[index_right]
        s_string[s_string.index(index_left)] = s_string[index_right]
        changes += 1
      end
      index_left += 1
      index_right -= 1
    end
  else
    until index_left + 1 == index_right
      if s_string[index_left] != s_string[index_right]
        s_string[s_string.index(index_left)] = s_string[index_right]
        changes += 1
      end
      index_left += 1
      index_right -= 1
    end
  end
  if changes > k
    -1
  else
    s_string.to_i
  end
end

p highest_value_palindrome(12321, 1)