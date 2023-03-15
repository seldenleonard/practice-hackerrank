# https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited/problem?isFullScreen=true

# INSTRUCTIONS
# A child is playing a cloud hopping game. In this game, there are sequentially numbered clouds that can be thunderheads or cumulus clouds. The character must jump from cloud to cloud until it reaches the start again.
# There is an array of clouds, c and an energy level e = 100. The character starts from c[0] and uses 1 unit of energy to make a jump of size k to cloud c[(i + k) % n]. If it lands on a thundercloud, c[i] = 1, its energy (e) decreases by 2 additional units. The game ends when the character lands back on cloud 0.
# Given the values of n, k, and the configuration of the clouds as an array c, determine the final value of e after the game ends.

# STEPS
# Define a method that accepts an array c and an integer k
# Define a variable called energy_level and set it equal to 100
# Create an index variable i and set it equal to 0
# Write a loop that concludes when c[i] is equal to 0
  # Set i equal to (i + k) % n
  # If c[i] = 1
    # e -= 2
  # i -= 1
# Return e


def jumping_clouds(c, k)
  energy_level = 100
  i = 0
  until c[i] == 0
    if c[i] = 1
      e -= 2
    end
    i -= 1
  end
  e
end

p jumping_clouds([0, 0, 1, 0], 2)