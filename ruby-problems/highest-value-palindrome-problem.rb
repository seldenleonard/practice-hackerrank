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

# FINAL STEP NEEDED TO SOLVE
  # After solving for 2/3 HackerRank Test cases, my issue now is that I am NOT changing everything to 9s, but instead am simply replacing with the higher of the two values in question. The tricky part though, is that I cant just ALWAYS change both values to 9s, because that would cost me 2 changes, and there might be more changes I need to do to make it a palindrome. Like say I'm only allotted 2 changes, and my input is 2211. In this case my output should be 2222. The solution might be to keep everything I have, then depending on how many changes I'm allotted that I have left, go back and substitute in some 9s. However, the issue here arises if i end up substituting the same value ive already spent 1 change one, meaning that to make 2 numbers into 9s, I will have effectively used 3 changes.
  # Solution: track changes NEEDED, instead of just changing the data immediately when I see that two values at opposite indexes are not equal to one another. Once I have tracked the changes I need, I can compare the amount of changes I am allotted (k), and then make appropriate determinations for what values I should change. It could also be a good idea to track which indexes need the changes, so i dont need to loop through the integer an entire second time. Once i go through and actually change the values to 9s, i will also want an 'unless' statement saying that both indexes should be changed unless i dont have enough changes alotted to make both 9s (in which case I just change one value to match the higher value of the pairing), or unless one of the values is 9 (in which case I simply make the other value a 9)

# def highest_value_palindrome(s, k)
#   s_string = s.to_s
#   index_left = 0
#   index_right = s_string.length - 1
#   changes = 0
#   until index_left >= index_right
#     if s_string[index_left] < s_string[index_right]
#       s_string.sub!(s_string[index_left], s_string[index_right])
#       changes += 1
#     elsif s_string[index_left] > s_string[index_right]
#       s_string.sub!(s_string[index_right], s_string[index_left])
#       changes += 1
#     end
#     index_left += 1
#     index_right -= 1
#   end
#   if changes > k # Can add this inside the loop as a killswitch
#     -1
#   else
#     s_string.to_i
#   end
# end

def highest_value_palindrome(s, k)
  s_string = s.to_s
  index_left = 0
  index_right = s_string.length - 1
  changes_needed = 0
  indexes_to_change = []
  until index_left >= index_right
    if s_string[index_left] != s_string[index_right]
      # s_string.sub!(s_string[index_left], s_string[index_right])
      changes_needed += 1
      indexes_to_change << [s_string[index_left], s_string[index_right]]
    end
    index_left += 1
    index_right -= 1
  end
  if changes_needed > k # Can add this inside the loop as a killswitch
    -1
  else
    s_string.to_i
  end
end

p highest_value_palindrome(12321, 1)
p highest_value_palindrome(3943, 1)
p highest_value_palindrome(0011, 1)