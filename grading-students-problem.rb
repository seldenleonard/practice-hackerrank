# # HackerLand University has the following grading policy:

# Every student receives a  in the inclusive range from  to .
# Any  less than  is a failing grade.
# Sam is a professor at the university and likes to round each student's  according to these rules:

# If the difference between the  and the next multiple of  is less than , round  up to the next multiple of .
# If the value of  is less than , no rounding occurs as the result will still be a failing grade.


# STEPS

# loop through and print out each number in the array
# conditional statement to determine whether the grade is failing or passing (over or below 38)
# conditional statement that determines whether the number is divisible by 5 or not
# conditional statement that if you add 1 to the grade and modulo is 0, add 1 to the number to round it
# conditional statement that says if you add 2 to the grade and modulo is 0, add 2 to the number to round it

def gradingStudents(grades)
  rounded_grades = []
  grades.each do |grade|
    if grade < 38
      rounded_grades << grade
    elsif grade % 5 == 0
      rounded_grades << grade
    elsif (grade + 1) % 5 == 0
      rounded_grades << grade + 1
    elsif (grade + 2) % 5 == 0
      rounded_grades << grade + 2
    else
      rounded_grades << grade
    end
  end
  rounded_grades
end
p gradingStudents([73, 67, 38, 33])