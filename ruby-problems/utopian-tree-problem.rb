# https://www.hackerrank.com/challenges/utopian-tree/problem

# INSTRUCTIONS
# The Utopian Tree goes through 2 cycles of growth every year. Each spring, it doubles in height. Each summer, its height increases by 1 meter.
# A Utopian Tree sapling with a height of 1 meter is planted at the onset of spring. How tall will the tree be after n growth cycles?
# For example, if the number of growth cycles is n = 5, the calculations are as follows:
# Period  Height
  # 0       1
  # 1       2
  # 2       3
  # 3       6
  # 4       7
  # 5       14

# STEPS
# Create a function that accepts the array "n"
# Set index to zero
# Set a variable for height, "h", equal to 1
# Create a while loop for when index is less than the length of array "n" 
  # Within the while loop, create an if/else statement where "h" gets doubled if the n[index] value is odd, or (else) h increases by 1 if n[index] is positive
# Return "h" for each value in array "n" (so "h" must be reset for each iteration of the while loop)

# def utopian_tree(n)
#   i = 0
#   while i < n.length
#     h = 1
#     if n[i].odd?
#       h *= 2
#     else
#       h += 1
#     end
#     i += 1
#     h
#   end
# end

def utopian_tree(n)
  i = 0
  
  while i < n.length
    h = 1
    if n[i] == 0
      h
    elsif n[i].even?
      (0.5 * n[i]).to_i.times do
        h *= 2
        h += 1
      end
    elsif n[i].odd?
      (0.5 * n[i]).to_i.times do
        h *= 2
        h += 1
      end
      h += 1
    end

    i += 1
    h
  end
end

p utopian_tree([3, 0, 1, 4])