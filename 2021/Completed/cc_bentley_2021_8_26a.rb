# Return the Next Number from the Integer Passed
# - Very Easy
# Create a function that takes a number as an argument, increments the
# number by +1 and returns the result.
#   Examples
# addition(0) ➞ 1
# addition(9) ➞ 10
# addition(-3) ➞ -2
# Notes
# Don't forget to return the result.

def addition(num)
  num + 1
end

puts addition(2) == 3
puts addition(-9) == -8
puts addition(0) == 1
puts addition(999) == 1000
puts addition(73) == 74