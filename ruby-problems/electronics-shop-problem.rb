# https://www.hackerrank.com/challenges/electronics-shop/problem?isFullScreen=true

# INSTRUCTIONS
# A person wants to determine the most expensive computer keyboard and USB drive that can be purchased with a give budget. Given price lists for keyboards and USB drives and a budget, find the cost to buy them. If it is not possible to buy both items, return -1.

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
  # Write a method that accepts three inputs, integers b (budget), n (number of keyboard models), and m (number of USB drive models).
  # Define an array called keyboards and set it equal to [40, 50, 60]
  # Define an array called drives and set it equal to [5, 8, 12]
  # Write two loops
    # In the first loop, iterate through the arrays "keyboards" and "drives" to find the combo of most expensive keyboard and lower value the customer can purchase while still less than 