# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

# Maria plays college basketball and wants to go pro. Each season she maintains a record of her play. She tabulates the number of times she breaks her season record for most points and least points in a game. Points scored in the first game establish her record for the season, and she begins counting from there.

# For example, assume her scores for the season are represented in the array . Scores are in the same order as the games played. She would tabulate her results as follows:

# Given the scores for a season, find and print the number of times Maria breaks her records for most and least points scored during the season.

# Function Description

# Complete the breakingRecords function in the editor below. It must return an integer array containing the numbers of times she broke her records. Index  is for breaking most points records, and index  is for breaking least points records.

# breakingRecords has the following parameter(s):

# scores: an array of integers

# STEPS

# loop through and print each integer in the array
# Set max and min variables based on the first number
# Loop through and compare each integer to the max and min, add 1 to min counter if game score is lower than min number and set min number to new lowest game score. Do the same for max counter