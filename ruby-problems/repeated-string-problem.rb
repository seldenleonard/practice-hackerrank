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

# STEPS to Refactor
# Instead of needing to loop through n values, just count how many times "a" exists in one s, then depending on how many full and partial times s is divisible by n, count how many "a"'s are present in the infinite string that way.

# def repeated_string(s, n)
#   counter = 0
#   i = 0
#   # x = n / s.length
#   # if x < 1
    
#   # end
#   while i <= n
#     # Could also add in here a way of just getting to the counter value by looping through s once, then by using division and multiplication, counting how many times that loop repeats
#     if s[i] == "a"
#       counter += 1
#     end
#     i += 1
#   end
#   counter
# end

def repeated_string(s, n)
  counter = 0
  i = 0
  if s.length <= n
    while i < s.length
      if s[i] == "a"
        counter += 1
      end
      i += 1
    end
    p x = n % s.length

  else
    while i < n
      
    end
  end


  counter
end

p repeated_string("aba", 10)

# p 10 % 3
# p 10 % 99
# p 1 % 3