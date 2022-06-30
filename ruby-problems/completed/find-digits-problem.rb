# https://www.hackerrank.com/challenges/find-digits/problem?isFullScreen=true

# INSTRUCTIONS
# An integer d is a divisor of an integer n if the remainder of n/d = 0.
# Given an integer, for each digit that makes up the integer determine whether it is a divisor. Count the number of divisors occurring within the integer.

# STEPS
# Create a function that accepts a single integer
# Set a variable called 'counter' equal to zero
# Loop through each digit of the integer and if the digit in question divides evenly (use modulo operator) into the input integer, then add 1 to the counter
# Return the counter

# ATTEMPT 1
# def find_digits(n)
#   counter = 0
#   i = 0
#   while i < n.to_s.length
#     if n[i] != 0 && n / n[i] == 0 # Actually I dont think I do need to use modulo operator
#       counter += 1
#     end
#     i += 1
#   end
#   counter
# end

# ATTEMPT 2
def find_digits(n)
  n = n.to_s
  counter = 0
  i = 0
  while i < n.length
    p n[i]
    if n[i].to_i != 0 && n.to_i % n[i].to_i == 0
      counter += 1
    end
    i += 1
  end
  counter
end

p find_digits(12)
p find_digits(1012)
p find_digits(123)