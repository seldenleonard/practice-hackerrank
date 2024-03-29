# https://www.hackerrank.com/challenges/migratory-birds/problem

# INSTRUCTIONS
# Given an array of bird sightings where every element represents a bird type id, determine the id of the most frequently sighted type. If more than 1 type has been spotted that maximum amount, return the smallest of their ids.

# STEPS
# Loop through array and print integers and set up counters
# Write conditionals to add to counters for each bird id
# Write conditionals to comparing most seen bird to each other bird id
  # If most seen is greater, do nothing
  # If most seen is smaller, set bird id being compared to most seen variable
  # If most seen is equal, do nothing
# print index

def migratory_birds(arr)
  id = 1
  type = 0
  perma_count = 0
  while id < 6
    count = arr.count(id)
    if count > perma_count
      type = id
      perma_count = count
    end
    id += 1
  end
  p type
end

migratory_birds([1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4])