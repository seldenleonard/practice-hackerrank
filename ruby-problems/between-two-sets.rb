# https://www.hackerrank.com/challenges/between-two-sets/problem

# STEPS
# Create a method that takes in two arrays
# Set an index equal to zero for the first array
# Set an index equal to zero for the second array
# Create a loop that iterates through the first array
#   Within this loop, create another loop that iterates through the second array and uses the modulo operator to determine if the integer being evaluated in the first array factors evenly into each value in the second array
# If the first array value does factor into each value in the second array, keep it, otherwise remove it from the first array -- so we are left with only the values in the first array that factor into all values of the secodn array 

# FIRST ATTEMPT - Incomplete
# def get_total_x(a, b)
#   index_a = 0
#   index_b = 0
#   counter = 0
#   factors = []
#   while index_a < a.length
#     while index_b < b.length
#       if b[index_b] % a[index_a] == 0
#         factors << a[index_a]
#       end
#       p b[index_b]
#       p a[index_a]
#       p factors
#       index_b += 1
#     end
#     index_b = 0
#     index_a += 1
#   end
#   counter = factors.uniq.count
#   p counter
#   factors
# end

# p get_total_x([2, 6], [24, 36])



# SECOND ATTEMPT - Incomplete

# NEW STEPS
# Set index_a = 0
# Set index_b = 0
# Create empty array called potential_factors
# Create empty array called definiteFactors
# Loop through the values of the second array
# For each value in the second array, evaluate whether ALL values from the first array factor into it evenly (using modulo operator)
#   If they do, add both a[index_a] and a[index_a + 1] to potential_factors array
#   If they do not, move on
# Once the loop completes, take all values that occur in the potential_factors array the amount of times that is equal to the length of the second array, and therefore meet the first criteria.
# Now take these for the are the values which will then be used to find new integers

# def get_total_x(a, b)
#   index_a = 0
#   index_b = 0
#   potential_factors = []
#   while index_b < b.length
#     if b[index_b] % a[index_a] == 0 && b[index_b] % a[index_a + 1] == 0
#       potential_factors << a[index_a]
#       potential_factors << a[index_a + 1]
#     end
#     index_b += 1
#   end
#   if test
    
#   end
#   potential_factors
# end


# if a[1] %
  
# end

# if a[1] % a[0] == 0
#   while index_b < b.length
#     if b[index_b] % a[1] == 0
      
#     end
#     index_b += 1
#   end
# end

# THIRD ATTEMPT - Incomplete

# def get_total_x(a, b)
#   index_b = 0
#   indexPF = 0
#   potential_factors = []
#   test_value = 0
#   if a[1] % a[0] == 0
#     until test_value >= b[0] * 0.5
#       test_value += a[1]
#       potential_factors << test_value
#     end
#     while index_b < b.length
#       while indexPF < potential_factors.length
#         if b[index_b] % potential_factors[indexPF] != 0

#         end
#         indexPF += 1
#       end
#       index_b += 1
#     end
#     potential_factors
#   end
# end


# FOURTH ATTEMPT - Works and almost fully accurate

# def get_total_x(a, b)
#   index_b = 0
#   # indexPF = 0
#   potential_factors = []
#   test_value = 0
#   if a[1] % a[0] == 0
#     until test_value >= b[0] * 0.5
#       test_value += a[1]
#       potential_factors << test_value
#     end
#     while index_b < b.length
#       potential_factors.each do |potential_factor|
#         if b[index_b] % potential_factor != 0
#           potential_factors.delete(potential_factor)
#         end
#       end
#       index_b += 1
#     end
#     potential_factors
#   end
# end


# # FIFTH ATTEMPT - Works for 1 of 2 HackerRank Test Cases

# def get_total_x(a, b)
#   index_b = 0
#   # indexPF = 0
#   potential_factors = []
#   test_value = 0
#   if a[1] % a[0] == 0
#     until test_value >= b[0]
#       test_value += a[1]
#       potential_factors << test_value
#     end
#     p potential_factors
#     while index_b < b.length
#       potential_factors.each do |potential_factor|
#         if b[index_b] % potential_factor != 0
#           potential_factors.delete(potential_factor)
#         end
#       end
#       index_b += 1
#     end
#     # potential_factors.each do |potential_factor|
#     #   return potential_factor
#     potential_factors.count
#     # end
#   end
# end

# MY ISSUE IN THE FIFTH ATTEMPT is: I do not have a path for the alorithm to folow if the two integers in array a do not factor into eachother (i.e. 2 factors into 4 but 2 does not factor into 5. So if array a was [2, 5], my method outputs nil)


# SIXTH ATTEMPT - Solves BOTH HackerRank Test Cases

# def get_total_x(a, b)
#   index_b = 0
#   # indexPF = 0
#   potential_factors = []
#   test_value = 0
#   if a[1] % a[0] == 0
#     until test_value >= b[0]
#       test_value += a[1]
#       potential_factors << test_value
#     end
#     p potential_factors
#     while index_b < b.length
#       potential_factors.each do |potential_factor|
#         if b[index_b] % potential_factor != 0
#           potential_factors.delete(potential_factor)
#         end
#       end
#       index_b += 1
#     end
#     potential_factors.count
#   else
#     until test_value >= b[0]
#       test_value += a[0] * a[1]
#       potential_factors << test_value
#     end
#     p potential_factors
#     while index_b < b.length
#       potential_factors.each do |potential_factor|
#         if b[index_b] % potential_factor != 0
#           potential_factors.delete(potential_factor)
#         end
#       end
#       index_b += 1
#     end
#     potential_factors.count
#   end
# end

# # SEVENTH ATTEMPT - Refactors Attempt 6, but see note on line 219 as to why my method is failing 6/9 test cases on HackerRank

# def get_total_x(a, b)
#   index_b = 0
#   potential_factors = []
#   test_value = 0
#   if a[1] % a[0] == 0
#     until test_value >= b[0]
#       test_value += a[1]
#       potential_factors << test_value
#     end
#   else
#     until test_value >= b[0]
#       test_value += a[0] * a[1] # My issue is here -- for example, the input: "p get_total_x([20, 30], [60, 120])", yields an output of zero, because im multiplying 20 by 30, which blows way past 60, even though both 20 and 30 factor into 60 and 60 factors into both 60 and 120, meaning the correct output should be 1 (or maybe 2, if 120 is also a correct answer?) Anyway, the point is that this line right here is making it so my method only works for small integers in array a, because once the integers in array a are a bit larger, the multiplication causes my method to overshoot integers that they both factor into.
#       potential_factors << test_value
#     end
#   end
#   while index_b < b.length
#     potential_factors.each do |potential_factor|
#       if b[index_b] % potential_factor != 0
#         potential_factors.delete(potential_factor)
#       end
#     end
#     index_b += 1
#   end
#   potential_factors.count
# end


# EIGHTH ATTEMPT

def get_total_x(a, b)
  index_b = 0
  potential_factors = []
  test_value = 0
  if a[1] % a[0] == 0
    until test_value >= b[0]
      test_value += a[1]
      potential_factors << test_value
    end
  else
  #   until test_value >= b[0]
  #     test_value += a[1] # May need to make this "a[1]" into "a[0]" but well see
  #     until test_value % a[0] == 0 && test_value % a[1] == 0
  #       potential_factors << test_value
  #       p test_value
  #     end
  #   end
  # end
  # while index_b < b.length
  #   potential_factors.each do |potential_factor|
  #     if b[index_b] % potential_factor != 0
  #       potential_factors.delete(potential_factor)
  #     en
  #   end
  #   index_b += 1
  # end
    until test_value >= b[0]
      test_value += a[1] # May need to make this "a[1]" into "a[0]" but well see
      if test_value % a[0] == 0 && test_value % a[1] == 0
        potential_factors << test_value
        # p test_value
      end
    end
  end
  while index_b < b.length
    potential_factors.each do |potential_factor|
      if b[index_b] % potential_factor != 0
        potential_factors.delete(potential_factor)
      end
    end
    index_b += 1
  end
  potential_factors.count
end

p get_total_x([2, 4], [16, 32, 96])
p get_total_x([3, 4], [24, 48])
p get_total_x([20, 30], [60, 120])
p get_total_x([2, 6], [24, 36, 50])
p get_total_x([2, 12], [24, 48, 50])

# TEST