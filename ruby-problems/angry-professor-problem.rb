# https://www.hackerrank.com/challenges/angry-professor/problem

# A Discrete Mathematics professor has a class of students. Frustrated with their lack of discipline, the professor decides to cancel class if fewer than some number of students are present when class starts. Arrival times go from on time (arrivalTime >= 0) to arrived late (arrivalTime > 0).
# Given the arrival time of each student and a threshhold number of attendees, determine if the class is cancelled.

# STEPS
# Create a method that accepts 2 values: integer k and array a
  # integer k = the threshold number of students needed on time for class to not be cancelled
  # array a = the arrival times of each student
# Create an each or while loop that iterates through array a, and counts each student that is late, using an if statement
# Write an if-statement, saying that if the number of students who are late exceeds the threshold, return "yes". Otherwise return "no".

def angryProfessor(k, a)
  i = 0
  late = 0
  a.each do |arrival|
    if arrival > 0
      late += 1
    end
  end
  if a.length - late >= k
    p "NO"
  else
    p "YES"
  end
end

angryProfessor(3, [-2, -1, 0, 1, 2])