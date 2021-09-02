# https://www.hackerrank.com/challenges/ruby-tutorials-object-method-parameters/problem

# A method may take zero or more parameters as input. To demonstrate this, we look at the asserts we use on HackerRank. Sometimes, we have to check whether a given number a is within the range b and c (where b <= c, and both inclusive).

# Three variables a, b, and c are already defined. Your task is to write code that checks whether a is within the range of b and c by calling the method range? (which we have defined for you as a method for this example) on a and passing b and c as arguments.

# Hint
# a.range?(b, c)
# or
# return a.range?(b, c)
# or
# a.range? b, c
# or
# return a.range? b, c

# STEPS
# Write a method called 'range' that accepts 3 values -- a, b, and c
# Write an if statement saying if a is less than b and greater than c, OR a is less than c and greater than b, then return true

def range(a, b, c)
  if c < a < b || b < a < c
    true
  end
end

p range(10, 3, 40)