# https://www.hackerrank.com/challenges/time-conversion/problem

# Given a time in -hour AM/PM format, convert it to military (24-hour) time.

# Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
# - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

# STEPS
# AM
#   If AM use string[-2] to pop off the last two characters in the string -- so its military AM
#     - Inside ^this conditional, have another if conditional that the 12 at the beggining of the string to 00
# PM
#   If PM, use string[-2] to pop off the last two characters in the string -- so its military PM
#     - Inside ^this conditional, if the hours are less than 12, add 1 to string[0] and 2 to string[1]

def time_conversion(s)
  if s[-2] == "A"
    s.delete!"AM"
    if s[0] == "1" && s[1] == "2"
      s[0] = "0"
      s[1] = "0"
    end
  elsif s[-2] == "P"
    s.delete!"PM"
    if s.split(":", 2)[0] != "12"
      hours = s.split(":", 2)[0].to_i + 12
      s = hours.to_s + ":" + s.split(":", 2)[1]
    end
  end
  p s
end

time_conversion("06:05:45PM")