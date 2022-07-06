# https://www.hackerrank.com/challenges/electronics-shop/problem?isFullScreen=true

# INSTRUCTIONS
# A person wants to determine the most expensive computer keyboard and USB drive that can be purchased with a given budget. Given price lists for keyboards and USB drives and a budget, find the cost to buy them. If it is not possible to buy both items, return -1.

# Function Description
  # Complete the get_money_spent function in the editor below.
  # get_money_spent has the following parameter(s):
    # int keyboards[n]: the keyboard prices
    # int drives[m]: the drive prices
    # int b: the budget

# Returns
  # int: the maximum that can be spent, or -1 if it is keyboardsot possible to buy both items

# Input Format
  # The first line contains three space-separated integers b, n, and m, the budget, the number of keyboard models and the number of USB drive models.
  # The second line contains n space-separated integers keyboard[i], the prices of each keyboard model.
  # The third line contains m space-separated integers drives, the prices of the USB drives.

# STEPS
  # Write a method that accepts three inputs, array keyboard (prices of keyboard models), array drives (prices of USB drive models), and integer b (budget).
  # Order the keyboards array and USB drives array from smallest to largest
  # Set a variable called "max_spending" equal to zero
  # Create two indexes, both set at 0, one index for keyboards array and one for USB drives array
  # Write an if statment saying, if keyboards[i] + drives[i] > b, then return - 1. Otherwise (else), go on to use the following loop:
    # Write a loop
    # Inside the loop iterate through array keyboards, while remaining at index of 0 for array drives. At each iteration, if keyboards[i] + drives[i] < b, then set the value of max_spending to keyboards[i] + drives[i]. If max_spending = b, return b.
    # Reset keyboards index to a value of zero
    # Write a second loop
      # Inside this loop iterate through array drives, while remaining at index of 0 for array keyboards. At each iteration, if keyboards[i] + drives[i] > max_spending AND keyboards[i] + drives[i] <= b, then set the value of max_spending to keyboards[i] + drives[i]. If max_spending = b, return b.

      # NOTABLY, my whiteboarding steps do not account for a combination of values that are in the middle of both arrays, it requires that one value is at the start of one of the arrays

# def get_money_spent(keyboards, drives, b)
#   keyboards.sort
#   drives.sort
#   index_k = 0
#   index_d = 0
#   max_spending = keyboards[index_k] + drives[index_d]
#   if max_spending > b
#     -1
#   elsif max_spending == b # may not need this elsif because I cover this possibility in my loops later on
#     b
#   else
#     while max_spending < b || index_k < keyboards.length # might consider making this less than OR EQUAL TO
#       index_k += 1
#       if keyboards[index_k] + drives[index_d] < b # For some reason, I am getting an undefined method error here for the use of "+" and "<". Interestingly, it seems that the "if" statement is causing the problem here, because when I remove the "if" statement, "keyboards[index_k] + drives[index_d] < b" causes no error 
#         max_spending = keyboards[index_k] + drives[index_d]
#         if max_spending == b
#           b
#         end
#       end
#     end
#   end
#   max_spending
# end

def get_money_spent(keyboards, drives, b)
  keyboards.sort
  drives.sort
  index_k = -1
  index_d = 0
  max_spending = keyboards[index_k] + drives[index_d]
  if max_spending > b
    -1
  elsif max_spending == b # may not need this elsif because I cover this possibility in my loops later on
    b
  else
    while max_spending < b || index_k < keyboards.length # might consider making this less than OR EQUAL TO
      index_k += 1
      p current_spend = keyboards[index_k] + drives[index_d]
        if current_spend < b && current_spend > max_spending # For some reason, I am getting an undefined method error here for the use of "+" and "<". Interestingly, it seems that the "if" statement is causing the problem here, because when I remove the "if" statement, "keyboards[index_k] + drives[index_d] < b" causes no error 
        max_spending = keyboards[index_k] + drives[index_d]
        # index_d += 1
        if max_spending < b
          b
        end
      end

    end
  end
  max_spending
end

p get_money_spent([40, 50, 60], [5, 8, 12], 60)