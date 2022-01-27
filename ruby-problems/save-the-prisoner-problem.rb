# https://www.hackerrank.com/challenges/save-the-prisoner/problem

# A jail has a number of prisoners and a number of treats to pass out to them. Their jailer decides the fairest way to divide the treats is to seat the prisoners around a circular table in sequentially numbered chairs. A chair number will be drawn from a hat. Beginning with the prisoner in that chair, one candy will be handed to each prisoner sequentially around the table until all have been distributed.

# The jailer is playing a little joke, though. The last piece of candy looks like all the others, but it tastes awful. Determine the chair number occupied by the prisoner who will receive that candy.

# Complete the saveThePrisoner function in the editor below. It should return an integer representing the chair number of the prisoner to warn.

# STEPS
# Create a method that accepts 3 integers
  # n = number of prisoners
  # m = number of candies
  # s = seat number that is first to recieve candy 
# Write a loop that ends when candies are all handed out
  # Inside this loop, write an if statement that resets to seat number 1 after the last seat number has recieved candy
  # Return the seat number of who recieved the last candy

def saveThePrisoner(n, m, s)
  while m > 0
    if s == n
      s == 0 # Might need to change to 1, depending on how i iterate through
    else
      s += 1
    end
    m -= 1
  end
  s
end

p saveThePrisoner(7, 19, 2)