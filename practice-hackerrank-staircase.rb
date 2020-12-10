# PROBLEM - Staircase

# input is a single integer 'n'
# print n lines with n number of #s for the first, then n=n-1 for each line after that until n=0

# def staircase(n)
#   n.times do
#     p "#"
#   end
# end

# def staircase(n)
#   single_floor = ""
#   while n > 0
#     n.times do
#       single_floor << "#"
#     end
#     n -= 1
#     p single_floor
#   end
# end

# def staircase(n)
#   single_floor = ""
#   i = 1
#   while i <= n
#     i.times do
#       single_floor << "# "
#     end
#     p single_floor
#     i += 1
#   end
# end

def staircase(n)
  single_floor = ""
  i = 1
  while i <= n
    i.times do
      single_floor << "# "
    end
    p single_floor
    i += 1
  end
end


staircase(4)