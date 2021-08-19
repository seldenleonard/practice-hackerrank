# https://www.hackerrank.com/challenges/angry-professor/problem

# A Discrete Mathematics professor has a class of students. Frustrated with their lack of discipline, the professor decides to cancel class if fewer than some number of students are present when class starts. Arrival times go from on time (arrivalTime >= 0) to arrived late (arrivalTime > 0).
# Given the arrival time of each student and a threshhold number of attendees, determine if the class is cancelled.

# STEPS
# Create a method that accepts any number of test cases (t), and within each test case, there are 3 values: 2 integers and an array
  # integer n = number of students in the class
  # integer k = the threshold number of students needed on time for class to not be cancelled
  # array a = the arrival times of each student
# Create an each or while loop that iterates through array a, and counts each student that is late
# Write an if-statement, saying that if the number of students who are late exceeds the threshold, return "false". Otherwise return "true".