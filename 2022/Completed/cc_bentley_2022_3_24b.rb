# Medium - Binary to Decimal Converter
# You are given one input: an array containing eight 1's and/or 0's. Write a function that takes an 8 bit binary number and converts it to decimal.
#
# Examples
# binary_to_decimal([1, 1, 1, 1, 1, 1, 1, 1]) ➞ 255
# binary_to_decimal([0, 0, 0, 0, 0, 0, 0, 0]) ➞ 0
# binary_to_decimal([1, 0, 1, 1, 1, 1, 0, 0]) ➞ 188
#
# Notes
# Return an integer.

def binary_to_decimal(binary)
  binary.join('').to_i(2)
end

puts binary_to_decimal([1, 1, 1, 1, 1, 1, 1, 1]) == 255
puts binary_to_decimal([0, 0, 0, 0, 0, 0, 0, 0]) == 0
puts binary_to_decimal([1, 0, 1, 1, 1, 1, 0, 0]) == 188
puts binary_to_decimal([1, 0, 1, 1, 0, 1, 0, 1]) == 181