# https://www.hackerrank.com/challenges/mini-max-sum/problem?h_r=internal-search

# Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

def mini_max_sum(arr)
  i = 0
  total_sum = arr.sum
  max_sum = arr[0]
  min_sum = arr.sum
  while i < arr.length
    new_sum = total_sum - arr[i]
    if min_sum > new_sum
      min_sum = new_sum
    end
    if max_sum < new_sum
      max_sum = new_sum
    end
    i += 1
  end
  print min_sum," ", max_sum
end

mini_max_sum([1, 2, 3, 4, 5])