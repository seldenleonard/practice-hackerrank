# https://www.hackerrank.com/challenges/electronics-shop/problem?isFullScreen=true

# INSTRUCTIONS
# A person wants to determine the most expensive computer keyboard and USB drive that can be purchased with a given budget. Given price lists for keyboards and USB drives and a budget, find the cost to buy them. If it is not possible to buy both items, return -1.

# Function Description
  # Complete the getMoneySpent function in the editor below.
  # getMoneySpent has the following parameter(s):
    # int keyboards[n]: the keyboard prices
    # int drives[m]: the drive prices
    # int b: the budget

# Returns
  # int: the maximum that can be spent, or -1 if it is not possible to buy both items

# Input Format
  # The first line contains three space-separated integers b, n, and m, the budget, the number of keyboard models and the number of USB drive models.
  # The second line contains n space-separated integers keyboard[i], the prices of each keyboard model.
  # The third line contains m space-separated integers drives, the prices of the USB drives.

# STEPS
  # Write a method that accepts three inputs, integer b (budget), array n (prices of keyboard models), and array m (prices of USB drive models).
  # Order the keyboards array and USB drives array from smallest to largest
  # Set a variable called "max_spending" equal to zero
  # Create two indexes, both set at 0, one index for keyboards array and one for USB drives array
  # Write an if statment saying, if n[i] + m[i] > b, then return - 1. Otherwise, go on to use the following loop:
  # Write a loop
    # Inside the loop iterate through array n, while remaining at index of 0 for array m. At each iteration, if n[i] + m[i] < b, then set the value of max_spending to n[i] + m[i]. if n[i] + m[i] = b, return b.
  # Write a second loop
    # Inside this loop iterate through array m, while remaining at index of 0 for array n. At each iteration, if n[i] + m[i] > max_spending AND n[i] + m[i] <= b, then set the value of max_spending to n[i] + m[i]. if n[i] + m[i] = b, return b.

def getMoneySpent(keyboards, drives, b)
  keyboards = 
end