# https://www.hackerrank.com/challenges/strange-advertising/problem

# INSTRUCTIONS
# HackerLand Enterprise is adopting a new viral advertising strategy. When they launch a new product, they advertise it to exactly 5 people on social media.

# On the first day, half of those 5 people (i.e., floor(5/2) = 2) like the advertisement and each shares it with 3 of their friends. At the beginning of the second day, floor(5/2) * 3 = 2 * 3 = 6 people receive the advertisement.

# Each day, floor(recipients/2) of the recipients like the advertisement and will share it with 3 friends on the following day. Assuming nobody receives the advertisement twice, determine how many people have liked the ad by the end of a given day, beginning with launch day as day 1.


# STEPS
# Create a method that accepts a single integer "n", which is the number of days
# Define four variables: day = 1, shared = 5, liked = shared / 2, & cumulative = 2
# Create a loop that goes until day == n
  # Within this loop, redefine the variables as follows:
    # day += 1, shared = liked * 3, liked = shared / 2, & cumulative += liked
# Return cumulative

def viralAdvertising(n)
  day = 1
  shared = 5
  liked = shared / 2
  cumulative = 2
  until day == n
    day += 1
    shared = liked * 3
    liked = shared / 2
    cumulative += liked
  end
  cumulative
end

p viralAdvertising(5)