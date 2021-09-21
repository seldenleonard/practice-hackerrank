# https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem?h_r=next-challenge&h_v=zen

# INSTRUCTIONS
# Lily likes to play games with integers. She has created a new game where she determines the difference between a number and its reverse. For instance, given the number 12, its reverse is 21. Their difference is 9. The number 120 reversed is 21, and their difference is 99.

# She decides to apply her game to decision making. She will look at a numbered range of days and will only go to a movie on a beautiful day.

# Given a range of numbered days, [i...j] and a number k, determine the number of days in the range that are beautiful. Beautiful numbers are defined as numbers where |i-reverse(i)| is evenly divisible by k. If a day's value is a beautiful number, it is a beautiful day. Return the number of beautiful days in the range.

# STEPS
# Create a method that accepts three integers (i: the starting day number; j: the ending day number; & k: the divisor)
# Subtract i from j to find the total number of days in the range
# Write a loop that goes the length of the total number of days in the range
  # Within this loop, do the following actions/calculations
  # Reverse the individual values for the integer within the range that is being evaluated, and define this new integer as 'reverse'
  # Then take the original integer and subtract its reverse integer
  # Then divide the result by k
  # If the resulting value is a whole number integer, then add one to a counter of beautiful days, otherwise, do not add one to this counter and simply let the loop continue
# Once the loop has ran its course, output the number of beautiful days

def beautifulDays(i, j, k)
  index = i
  beautifulDaysCounter = 0
  until index > j do
    day = index - index.to_s.reverse.to_i
    if (index - day.to_f)/k % 2
      beautifulDaysCounter += 1
    end
    index += 1
  end
  p beautifulDaysCounter
end

beautifulDays(20, 23, 6)