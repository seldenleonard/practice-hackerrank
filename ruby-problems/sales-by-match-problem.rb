# https://www.hackerrank.com/challenges/sock-merchant/problem

# INSTRUCTIONS
# There is a large pile of socks that must be paired by color. Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.

# Example
# n = 7
# ar = [1, 2, 1, 2, 1, 3, 2]

# There is one pair of color 1 and one of color 2. There are three odd socks left, one of each color. The number of pairs is 2.

# STEPS
# Create a method that accepts array "ar"
# Define variable "pairs" as equal to zero
# Define variable 'index" as equal to zero
# Define variable 'index_2" as equal to zero
# Create a loop ends that ends when "index" = "ar" - 1
  # Iterate through the loop using "index"
  # Create another loop that ends when "index_2" = "ar" - 1
    # Inside this loop, have "index_2" iterate through "ar" to find a number equal to ar[index]. If there is a number, remove both ar[index] and ar[index_2] from ar, then add 1 to "pairs". If not, then just move on
  # Return "pairs"

# def sock_merchant(ar)
#   pairs = 0
#   index = 0
#   index_2 = 0
#   # ar.sort
#   while index < ar.length
#     while index_2 < ar.length
#       if index_2 == ar[index]
#         pairs += 1
#         ar.delete_at(index)
#         ar.delete_at(index_2)
#         index_2 == ar.length
#       end
#       index_2 += 1
#     end
#     index += 1
#     index_2 = 0
#   end
#   pairs
# end

# THIS WAS MY ATTEMPT TO SOLVE IT ON THE PLANE WITH NO INTERNET AND IT WORKED FOR MY TEST CASES BUT STILL FAILED SOME HACKERRANK TEST CASES
def sock_merchant(ar)
  pairs = 0
  index = 0
  index_2 = 0
  while index < ar.length
    while index_2 < ar.length
      index_2 += 1
        # p "index_2"
        # p ar[index_2]
        # p "index"
        # p ar[index]
      if ar[index_2] == ar[index]
        pairs += 1
        # ar.delete_at(index)
        ar.delete_at(index_2)
        index_2 == ar.length
      end
    end
    # index += 1
    ar.delete_at(index)
    index_2 = index + 1
  end
  pairs
end

p sock_merchant([1, 2, 1, 2, 1, 3, 2])
p sock_merchant([10, 20, 20, 10, 10, 30, 50, 10, 20])