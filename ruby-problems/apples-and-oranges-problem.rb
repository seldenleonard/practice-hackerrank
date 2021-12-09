# https://www.hackerrank.com/challenges/apple-and-orange/problem

# INSTRUCTIONS
# Sam's house has an apple tree and an orange tree that yield an abundance of fruit. Using the information given below, determine the number of apples and oranges that land on Sam's house.

# In the diagram below:
  # The red region denotes the house, where s is the start point, and t is the endpoint. The apple tree is to the left of the house, and the orange tree is to its right.
  # Assume the trees are located on a single point, where the apple tree is at point a, and the orange tree is at point b.
  # When a fruit falls from its tree, it lands d units of distance from its tree of origin along the x-axis.
  # **A negative value of d means the fruit fell d units to the tree's left, and a positive value of d means it falls d units to the tree's right.**

  # Given the value of d for m apples and n oranges, determine how many apples and oranges will fall on Sam's house (i.e., in the inclusive range [s,t])?

# STEPS
# map through apples and add position of tree to apple distance
# map through oranges and add position of tree to orange distance
# map through the new apple array and if the new number is between the range of the house, add a number to the counter
# map through the new orange array and if the new number is between the range of the house, add a number to the counter

def count_apples_and_oranges(s, t, a, b, apples, oranges)
  apples_on_house = 0
  oranges_on_house = 0
  apples.map! do |apple|
    apple + a
  end
  oranges.map! do |orange|
    orange + b
  end
  apples.each do |apple|
    if apple >= s && apple <= t
      apples_on_house += 1
    end
  end
  oranges.each do |orange|
    if orange >= s && orange <= t
      oranges_on_house += 1
    end
  end
  p apples_on_house
  p oranges_on_house
end

count_apples_and_oranges(7, 11, 5, 5, [-2, 2, 1], [5, -6])