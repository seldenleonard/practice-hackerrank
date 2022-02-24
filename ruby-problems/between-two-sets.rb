# https://www.hackerrank.com/challenges/between-two-sets/problem

# STEPS
# Create a method that takes in two arrays
# Set an index equal to zero for the first array
# Set an index equal to zero for the second array
# Create a loop that iterates through the first array
#   Within this loop, create another loop that iterates through the second array and uses the modulo operator to determine if the integer being evaluated in the first array factors evenly into each value in the second array
# If the first array value does factor into each value in the second array, keep it, otherwise remove it from the first array -- so we are left with only the values in the first array that factor into all values of the secodn array 

# FIRST ATTEMPT - Incomplete
# def getTotalX(a, b)
#   indexA = 0
#   indexB = 0
#   counter = 0
#   factors = []
#   while indexA < a.length
#     while indexB < b.length
#       if b[indexB] % a[indexA] == 0
#         factors << a[indexA]
#       end
#       p b[indexB]
#       p a[indexA]
#       p factors
#       indexB += 1
#     end
#     indexB = 0
#     indexA += 1
#   end
#   counter = factors.uniq.count
#   p counter
#   factors
# end

# p getTotalX([2, 6], [24, 36])



# SECOND ATTEMPT - Incomplete

# NEW STEPS
# Set indexA = 0
# Set indexB = 0
# Create empty array called potentialFactors
# Create empty array called definiteFactors
# Loop through the values of the second array
# For each value in the second array, evaluate whether ALL values from the first array factor into it evenly (using modulo operator)
#   If they do, add both a[indexA] and a[indexA + 1] to potentialFactors array
#   If they do not, move on
# Once the loop completes, take all values that occur in the potentialFactors array the amount of times that is equal to the length of the second array, and therefore meet the first criteria.
# Now take these for the are the values which will then be used to find new integers

# def getTotalX(a, b)
#   indexA = 0
#   indexB = 0
#   potentialFactors = []
#   while indexB < b.length
#     if b[indexB] % a[indexA] == 0 && b[indexB] % a[indexA + 1] == 0
#       potentialFactors << a[indexA]
#       potentialFactors << a[indexA + 1]
#     end
#     indexB += 1
#   end
#   if test
    
#   end
#   potentialFactors
# end


# if a[1] %
  
# end

# if a[1] % a[0] == 0
#   while indexB < b.length
#     if b[indexB] % a[1] == 0
      
#     end
#     indexB += 1
#   end
# end

# THIRD ATTEMPT - Incomplete

# def getTotalX(a, b)
#   indexB = 0
#   indexPF = 0
#   potentialFactors = []
#   testValue = 0
#   if a[1] % a[0] == 0
#     until testValue >= b[0] * 0.5
#       testValue += a[1]
#       potentialFactors << testValue
#     end
#     while indexB < b.length
#       while indexPF < potentialFactors.length
#         if b[indexB] % potentialFactors[indexPF] != 0

#         end
#         indexPF += 1
#       end
#       indexB += 1
#     end
#     potentialFactors
#   end
# end


# FOURTH ATTEMPT - Works and almost fully accurate

# def getTotalX(a, b)
#   indexB = 0
#   # indexPF = 0
#   potentialFactors = []
#   testValue = 0
#   if a[1] % a[0] == 0
#     until testValue >= b[0] * 0.5
#       testValue += a[1]
#       potentialFactors << testValue
#     end
#     while indexB < b.length
#       potentialFactors.each do |potentialFactor|
#         if b[indexB] % potentialFactor != 0
#           potentialFactors.delete(potentialFactor)
#         end
#       end
#       indexB += 1
#     end
#     potentialFactors
#   end
# end


# # FIFTH ATTEMPT - Works for 1 of 2 HackerRank Test Cases

# def getTotalX(a, b)
#   indexB = 0
#   # indexPF = 0
#   potentialFactors = []
#   testValue = 0
#   if a[1] % a[0] == 0
#     until testValue >= b[0]
#       testValue += a[1]
#       potentialFactors << testValue
#     end
#     p potentialFactors
#     while indexB < b.length
#       potentialFactors.each do |potentialFactor|
#         if b[indexB] % potentialFactor != 0
#           potentialFactors.delete(potentialFactor)
#         end
#       end
#       indexB += 1
#     end
#     # potentialFactors.each do |potentialFactor|
#     #   return potentialFactor
#     potentialFactors.count
#     # end
#   end
# end

# MY ISSUE IN THE FIFTH ATTEMPT is: I do not have a path for the alorithm to folow if the two integers in array a do not factor into eachother (i.e. 2 factors into 4 but 2 does not factor into 5. So if array a was [2, 5], my method outputs nil)


# SIXTH ATTEMPT - Solves BOTH HackerRank Test Cases

# def getTotalX(a, b)
#   indexB = 0
#   # indexPF = 0
#   potentialFactors = []
#   testValue = 0
#   if a[1] % a[0] == 0
#     until testValue >= b[0]
#       testValue += a[1]
#       potentialFactors << testValue
#     end
#     p potentialFactors
#     while indexB < b.length
#       potentialFactors.each do |potentialFactor|
#         if b[indexB] % potentialFactor != 0
#           potentialFactors.delete(potentialFactor)
#         end
#       end
#       indexB += 1
#     end
#     potentialFactors.count
#   else
#     until testValue >= b[0]
#       testValue += a[0] * a[1]
#       potentialFactors << testValue
#     end
#     p potentialFactors
#     while indexB < b.length
#       potentialFactors.each do |potentialFactor|
#         if b[indexB] % potentialFactor != 0
#           potentialFactors.delete(potentialFactor)
#         end
#       end
#       indexB += 1
#     end
#     potentialFactors.count
#   end
# end

# # SEVENTH ATTEMPT - Refactors Attempt 6, but see note on line 219 as to why my method is failing 6/9 test cases on HackerRank

# def getTotalX(a, b)
#   indexB = 0
#   potentialFactors = []
#   testValue = 0
#   if a[1] % a[0] == 0
#     until testValue >= b[0]
#       testValue += a[1]
#       potentialFactors << testValue
#     end
#   else
#     until testValue >= b[0]
#       testValue += a[0] * a[1] # My issue is here -- for example, the input: "p getTotalX([20, 30], [60, 120])", yields an output of zero, because im multiplying 20 by 30, which blows way past 60, even though both 20 and 30 factor into 60 and 60 factors into both 60 and 120, meaning the correct output should be 1 (or maybe 2, if 120 is also a correct answer?) Anyway, the point is that this line right here is making it so my method only works for small integers in array a, because once the integers in array a are a bit larger, the multiplication causes my method to overshoot integers that they both factor into.
#       potentialFactors << testValue
#     end
#   end
#   while indexB < b.length
#     potentialFactors.each do |potentialFactor|
#       if b[indexB] % potentialFactor != 0
#         potentialFactors.delete(potentialFactor)
#       end
#     end
#     indexB += 1
#   end
#   potentialFactors.count
# end


# EIGHTH ATTEMPT

def getTotalX(a, b)
  indexB = 0
  potentialFactors = []
  testValue = 0
  if a[1] % a[0] == 0
    until testValue >= b[0]
      testValue += a[1]
      potentialFactors << testValue
    end
  else
  #   until testValue >= b[0]
  #     testValue += a[1] # May need to make this "a[1]" into "a[0]" but well see
  #     until testValue % a[0] == 0 && testValue % a[1] == 0
  #       potentialFactors << testValue
  #       p testValue
  #     end
  #   end
  # end
  # while indexB < b.length
  #   potentialFactors.each do |potentialFactor|
  #     if b[indexB] % potentialFactor != 0
  #       potentialFactors.delete(potentialFactor)
  #     en
  #   end
  #   indexB += 1
  # end
    until testValue >= b[0]
      testValue += a[1] # May need to make this "a[1]" into "a[0]" but well see
      if testValue % a[0] == 0 && testValue % a[1] == 0
        potentialFactors << testValue
        # p testValue
      end
    end
  end
  while indexB < b.length
    potentialFactors.each do |potentialFactor|
      if b[indexB] % potentialFactor != 0
        potentialFactors.delete(potentialFactor)
      end
    end
    indexB += 1
  end
  potentialFactors.count
end

p getTotalX([2, 4], [16, 32, 96])
p getTotalX([3, 4], [24, 48])
p getTotalX([20, 30], [60, 120])
p getTotalX([2, 6], [24, 36, 50])
p getTotalX([2, 12], [24, 48, 50])

# TEST