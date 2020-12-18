# https://www.hackerrank.com/challenges/the-birthday-bar/problem

# Given a chocolate bar, two children, Lily and Ron, are determining how to share it. Each of the squares has an integer on it.

# Lily decides to share a contiguous segment of the bar selected such that:

# The length of the segment matches Ron's birth month, and,
# The sum of the integers on the squares is equal to his birth day.
# You must determine how many ways she can divide the chocolate.

# Function Description

# Complete the birthday function in the editor below. It should return an integer denoting the number of ways Lily can divide the chocolate bar.

# birthday has the following parameter(s):

# s: an array of integers, the numbers on each of the squares of chocolate
# d: an integer, Ron's birth day
# m: an integer, Ron's birth month

# Input Format

# The first line contains an integer , the number of squares in the chocolate bar.
# The second line contains  space-separated integers , the numbers on the chocolate squares where .
# The third line contains two space-separated integers,  and , Ron's birth day and his birth month.


# STEPS

# Loop that prints each number in the array
# Loop through and add two numbers at a time using index and index + 1
# Conditional that says if index and index + 1 is equal to the day, add 1 to a counter

def birthday(s, d, m)
  i = 0
  counter = 0
  while i <= s.length - m
    i2 = i
    sum = 0
    m.times do
      sum += s[i2]
      i2 += 1
    end
    if sum == d
      counter += 1
    end
    i += 1
  end
  p counter
end
birthday([1, 2, 1, 3, 2], 3, 2)