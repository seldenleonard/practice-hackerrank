# https://www.hackerrank.com/challenges/between-two-sets/problem

# STEPS
# Create a method that takes in two arrays
# Set an index equal to zero for the first array
# Set an index equal to zero for the second array
# Create a loop that iterates through the first array
#   Within this loop, create another loop that iterates through the second array and uses the modulo operator to determine if the integer being evaluated in the first array factors evenly into each value in the second array
# If the first array value does factor into each value in the second array, keep it, otherwise remove it from the first array -- so we are left with only the values in the first array that factor into all values of the secodn array 

def getTotalX(a, b)
  indexA = 0
  indexB = 0
  while indexA <= a.length
    while indexB <= b.length
      if b[indexB] % a[indexA] !== 0
        a.delete_at a.index indexA
      end
      indexA += 1
    end
    indexB += 1
  end
  a
end

getTotalX([2, 6], [24, 36])