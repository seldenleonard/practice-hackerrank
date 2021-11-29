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