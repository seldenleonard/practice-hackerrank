# You are choreographing a circus show with various animals. For one act, you are given two kangaroos on a number line ready to jump in the positive direction (i.e, toward positive infinity).

# The first kangaroo starts at location x1 and moves at a rate of v1 meters per jump.
# The second kangaroo starts at location x2 and moves at a rate of v2 meters per jump.
# You have to figure out a way to get both kangaroos at the same location at the same time as part of the show. If it is possible, return YES, otherwise return NO.

# STEPS
# Create a method that accepts an input of 4 integers (x1, x2, v1, v2)
# Write a series of if statements saying:
  # if x1 > x2 AND v1 > v2, return "NO"
  # if x2 > x1 AND v2 > v1, return "NO"
  # if v2 > v1 THEN 
# Basically the idea is that once the kangaroo moving fastest surpasses the slower kangaroo, return "NO".
# Create two variables called "kangaroo1" and "kangaroo2", which will track their positions as they increase. 
# Create an until/or loop, where UNTIL the two kangaroos are at the same position OR the faster kangaroo surpasses the position of the slower kangaroo, stop the method and return either "YES" or "NO"