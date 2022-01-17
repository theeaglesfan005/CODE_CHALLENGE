# Last Digit Ultimate
#
# Your job is to create a function, that takes 3 numbers: a, b, c
# and returns true if the last digit of a * b = the last digit of c.
# Check the examples below for an explanation.
#
# Example
# last_dig(25, 21, 125) ➞ true
# # The last digit of 25 is 5, the last digit of 21 is 1, and the last
# # digit of 125 is 5, and the last digit of 5*1 = 5, which is equal
# # to the last digit of 125(5).
#
# last_dig(55, 226, 5190) ➞ true
# # The last digit of 55 is 5, the last digit of 226 is 6, and the last
# # digit of 5190 is 0, and the last digit of 5*6 = 30 is 0, which is
# # equal to the last digit of 5190(0).
#
# last_dig(12, 215, 2142) ➞ false
# # The last digit of 12 is 2, the last digit of 215 is 5, and the last
# # digit of 2142 is 2, and the last digit of 2*5 = 10 is 0, which is
# # not equal to the last digit of 2142(2).
# Notes
# Numbers can be negative.
#
# Code

def last_dig(a, b, c);
  ((a * b) % 10) == c % 10
end

puts last_dig(1, 1, 1) == true
puts last_dig(12, 15, 10) == true
puts last_dig(15228, 9209, 72162) == true
puts last_dig(15, 1, 1) == false
puts last_dig(123, 15, 10) == false
puts last_dig(5213, 99219, 6165) == false
puts last_dig(1523, 513, 512) == false
puts last_dig(-15, 1, 1) == false
puts last_dig(123, -15, 10) == false
puts last_dig(-12, 15, -10) == true
puts last_dig(15228, -9209, -72162) == true