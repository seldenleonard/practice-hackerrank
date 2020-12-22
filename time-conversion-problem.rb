# Given a time in -hour AM/PM format, convert it to military (24-hour) time.

# Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
# - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.

# STEPS
# Create method that takes in a single string
# Use "if" statements and conditionals to change values at specific values within the string, by iterating through the string
# For exmaple: if time[0] and time[1] are "1" and "2", AND time[9] is "A" make time[0] and time[1] in the output "0" and "0"

# def time_conversion(time)
#   military_time = "11:01:00"
#   if time[0] == "1" && time[1] == "2" && time[9] == "A"
#     military_time[0] = "0"
#     military_time[1] = "0"
#   end
#   p military_time
# end

# time_conversion("07:05:45PM")



# STEPS
# AM
#   If AM use string[-2] to pop off the last two characters in the string -- so its military AM
#     - Inside ^thus conditional, have another if conditional that the 12 at the beggining of the string to 00
# PM
#   If PM, use string[-2] to pop off the last two characters in the string -- so its military PM
#     - Inside ^thus conditional, if the hours are less than 12, add 1 to string[0] and 2 to string[1]