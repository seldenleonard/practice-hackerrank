# You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Count how many candles are tallest.

# STEPS
# create a method that takes in an array
# set the variable "tallest_candle" equal to 0 (because constraints do not allow negative numbers - so no issue there)
  # ------- (or just set it to index 0 of the array (the first value of the array))
# make an index and loop to iterate through each array value, comparing each value to the one following it, then set "tallest_candle" to whichever is larger
  # ------- (or just use .sort method and set the "tallest_candle" variable to the value of array.last - then you can start at the end and iterate backwards, counting how many array values these are equal to "tallest candle", and end the loop/iterating when the array value is no longer equal to "tallest_candle")
# once the entire array has been evaluated, reset the index to 0, and iterate through the array a 2nd time, adding 1 to a variable that is keeping count of how many instances of the "tallest_candle" value exist in the array.
# output the count of "tallest_candle" occurences in the array

# Idea to make code my DRY - instead of looping through a 2nd time, count during the first loop, and add a conditional where if the "tallest_candle" value changes, reset count to 1.


def birthday_cake_candles(candles)
  i = 1
  tallest_candle = candles[0]
  tallest_candle_count = 1
  while i < candles.length
    if tallest_candle < candles[i]
      tallest_candle = candles[i]
      tallest_candle_count = 1
    elsif tallest_candle == candles[i]
      tallest_candle_count += 1
    end
    i += 1
  end
  p tallest_candle_count
end

birthday_cake_candles([3, 2, 1, 3])