# You are choreographing a circus show with various animals. For one act, you are given two kangaroos on a number line ready to jump in the positive direction (i.e, toward positive infinity).

# The first kangaroo starts at location x1 and moves at a rate of v1 meters per jump.
# The second kangaroo starts at location x2 and moves at a rate of v2 meters per jump.
# You have to figure out a way to get both kangaroos at the same location at the same time as part of the show. If it is possible, return YES, otherwise return NO.

# STEPS
# Create a method that accepts an input of 4 integers (x1, v1, x2, v2)
# Write a series of if statements saying:
  # if x1 > x2 AND v1 > v2, return "NO"
  # if x2 > x1 AND v2 > v1, return "NO"
  # Edgecase: if the speeds are equal but locations are not, then no kangaroo will ever pass the other, so need if statement to account for that
# Basically the idea is that once the kangaroo moving fastest surpasses the slower kangaroo, return "NO".
# Create two variables called "roo1" and "roo2", which will track each kangaroos positions as they increase.
  # Alternate idea to this^ ==> instead of having roo1 correspond to x1 and v1, and roo2 correspond to x2 and v2, I could have "fast_roo" and "slow_roo", linking these variables to whichever kangaroo is faster, because it will make it easier to write an "until/or" statement.
# Create an until/or loop, where UNTIL the two kangaroos are at the same position OR the faster kangaroo surpasses the position of the slower kangaroo, stop the method and return either "YES" or "NO"

# def kangaroo(x1, v1, x2, v2)
#   if x1 > x2 && v1 > v2 || x2 > x1 and v2 > v1
#     p "NO"
#   end
#   roo1 = x1
#   roo2 = x2
#   until roo1 == roo2 ||
    
#   end
# end

def kangaroo(x1, v1, x2, v2)
  if x1 > x2 && v1 > v2 || x2 > x1 && v2 > v1 || x1 != x2 && v1 == v2 # -- edgecase: if the speeds are equal but locations are not, then no kangaroo will ever pass the other, so the last "or" statement accounts for that
    p "NO"
  end
  if v1 > v2
    fast_roo = x1
    fast_roo_speed = v1
    slow_roo = x2
    slow_roo_speed = v2
  elsif v1 == v2 && x1 == x2
    p "YES"
  else
    slow_roo = x2
    fast_roo_speed = v2
    slow_roo = x1
    slow_roo_speed = v1
  end
  until fast_roo.to_i >= slow_roo.to_i do
    fast_roo = fast_roo.to_i + fast_roo_speed.to_i
    slow_roo = slow_roo.to_i + slow_roo_speed.to_i
  end
  if fast_roo == slow_roo
    p "YES"
  elsif fast_roo.to_i > slow_roo.to_i
    p "NO"
  end
end

kangaroo(0, 2, 5, 3)
kangaroo(3, 7, 1, 3)