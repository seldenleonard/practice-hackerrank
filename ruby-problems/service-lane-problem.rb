# https://www.hackerrank.com/challenges/service-lane/problem

# A driver is driving on the freeway. The check engine light of his vehicle is on, and the driver wants to get service immediately. Luckily, a service lane runs parallel to the highway. It varies in width along its length.
# You will be given an array of widths at points along the road (indices), then a list of the indices of entry and exit points. Considering each entry and exit point pair, calculate the maximum size vehicle that can travel that segment of the service lane safely.

# STEPS
# Create a method that accepts:
# --- Width: An array of integers
# --- Cases: An array of arrays, each sub-array containing 2 integer values
# Using each pair of integers in each subarray as index values for the width array, return the smallest value in the width array, inside of that index range

# ATTEMPT 1 - Forgot to Utilize 'width' Input
# def serviceLane(width, cases)
#   index1 = 0
#   while index1 < cases.length
#     index2 = cases[index1][0]
#     smallest_width = index2
#     while index2 <= cases[index1][1]
#       if smallest_width > cases[index1][index2]
#         smallest_width = cases[index1][index2]
#       end
#       p smallest_width
#       index2 += 1
#     end
#     index1 += 1
#   end
# end

# ATTEMPT 2 - Outputs Correctly 3/5 Integers Expected
# def serviceLane(width, cases)
#   index1 = 0
#   while index1 < cases.length
#     index2 = cases[index1][0]
#     smallest_width = index2
#     while index2 <= cases[index1][1]
#       if smallest_width > width[index2]
#         smallest_width = width[index2]
#       end
#       index2 += 1
#     end
#     p smallest_width
#     index1 += 1
#   end
# end

# ATTEMPT 3 - Correct -- BUT HackerRank Doesnt Like It
#   index1 = 0
#   while index1 < cases.length
#     index2 = cases[index1][0]
#     smallest_width = width[index2]
#     while index2 <= cases[index1][1]
#       if smallest_width > width[index2]
#         smallest_width = width[index2]
#       end
#       index2 += 1
#     end
#     p smallest_width
#     index1 += 1
#   end
# end

# ATTEMPT 4 -- Also correct, but HackerRank does not like it
# def serviceLane(width, cases)
#   index1 = 0
#   smallest_width_array = []
#   while index1 < cases.length
#     index2 = cases[index1][0]
#     smallest_width = width[index2]
#     while index2 <= cases[index1][1]
#       if smallest_width > width[index2]
#         smallest_width = width[index2]
#       end
#       index2 += 1
#     end
#     smallest_width_array << smallest_width
#     index1 += 1
#   end
#   puts smallest_width_array
# end


serviceLane([2, 3, 1, 2, 3, 2, 3, 3], [[0, 3], [4, 6], [6, 7], [3, 5], [0, 7]])