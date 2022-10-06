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


def save_the_prisoner(n, m, s)
  if m + s - 1 <= n
    return m + s - 1
  elsif m + s - 1 > n
    reduced_m = n - s
    if m - reduced_m <= n
      return m - reduced_m
    elsif m - reduced_m > n
      (m - reduced_m) % n
    end
  end
  
end

p save_the_prisoner(3, 7, 3)

  # if candies + starting point - 1 <= prisoners
  #   return candies + starting point - 1
  
  # if candies + starting point > prisoners
  #   reduced_candies = prisoners - starting point
  # # reduced_candies is the amount of candies we have left once we start on the second round of handing them out to prisoners. so reduced_candies is the amount of candies left once we circle back to prisoner/chair 1
  # if candies - reduced_candies <= prisoners
  #   return candies - reduced_candies
  # elsif candies - reduced_candies > prisoners
  #   (candies - reduced_candies) % prisoners

  # s + x = n
  # -s