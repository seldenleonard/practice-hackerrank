# https://www.hackerrank.com/challenges/save-the-prisoner/problem

# A jail has a number of prisoners and a number of treats to pass out to them. Their jailer decides the fairest way to divide the treats is to seat the prisoners around a circular table in sequentially numbered chairs. A chair number will be drawn from a hat. Beginning with the prisoner in that chair, one candy will be handed to each prisoner sequentially around the table until all have been distributed.

# The jailer is playing a little joke, though. The last piece of candy looks like all the others, but it tastes awful. Determine the chair number occupied by the prisoner who will receive that candy.

# Complete the save_the_prisoner function in the editor below. It should return an integer representing the chair number of the prisoner to warn.

# STEPS
# Create a method that accepts 3 integers
  # n = number of prisoners
  # m = number of candies
  # s = seat number that is first to recieve candy 
# Write a loop that ends when candies are all handed out
  # Inside this loop, write an if statement that resets to seat number 1 after the last seat number has recieved candy
  # Return the seat number of who recieved the last candy

def save_the_prisoner(n, m, s)
  x = (m + s - 1)
  if x <= n
    x
  elsif x % n == 0
    n
  else
    x % n
  end
end

p save_the_prisoner(5, 2, 1)
p save_the_prisoner(5, 2, 2)
p save_the_prisoner(7, 19, 2)
p save_the_prisoner(3, 7, 3)