# https://www.hackerrank.com/challenges/apple-and-orange/problem

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