# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

# INSTRUCTIONS
# Maria plays college basketball and wants to go pro. Each season she maintains a record of her play. She tabulates the number of times she breaks her season record for most points and least points in a game. Points scored in the first game establish her record for the season, and she begins counting from there.

# For example, assume her scores for the season are represented in the array . Scores are in the same order as the games played. She would tabulate her results as follows:

# Given the scores for a season, find and print the number of times Maria breaks her records for most and least points scored during the season.

# STEPS
# loop through and print each integer in the array
# Set max and min variables based on the first number
# Loop through and compare each integer to the max and min, add 1 to min counter if game score is lower than min number and set min number to new lowest game score. Do the same for max counter

def breaking_records(scores)
  max_score = scores[0]
  min_score = scores[0]
  max_counter = 0
  min_counter = 0
  scores.each do |score|
    if score > max_score
      max_score = score
      max_counter += 1
    elsif score < min_score
      min_score = score
      min_counter += 1
    end
  end
  min_and_max = []
  min_and_max << max_counter
  min_and_max << min_counter
  p min_and_max
end

breaking_records([3, 4, 21, 36, 10, 28, 35, 5, 24, 42])