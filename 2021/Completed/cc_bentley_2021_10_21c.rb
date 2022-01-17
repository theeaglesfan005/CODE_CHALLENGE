# Medium - Bitwise Operations
# A decimal number can be represented as a sequence of bits. To illustrate:
# 6 = 00000110
# 23 = 00010111
#
# From the bitwise representation of numbers, we can calculate the bitwise AND, bitwise OR and bitwise XOR. Using the example above:
# bitwise_and(6, 23) ➞ 00000110
# bitwise_or(6, 23) ➞ 00010111
# bitwise_xor(6, 23) ➞ 00010001
#
# Write three functions to calculate the bitwise AND, bitwise OR and bitwise XOR of two numbers.
# Examples
# bitwise_and(7, 12) ➞ 4
# bitwise_or(7, 12) ➞ 15
# bitwise_xor(7, 12) ➞ 11
#
# Notes
# Ruby has a useful function: to_s(2), where you can see the binary representation of a decimal number.

def bitwise_and(n1, n2)
  (n1 & n2)
end

def bitwise_or(n1, n2)
  (n1 | n2)
end

def bitwise_xor(n1, n2)
  (n1 ^ n2)
end

puts bitwise_and(7, 12) == 4
puts bitwise_or(7, 12) == 15
puts bitwise_xor(7, 12) == 11
puts bitwise_and(32, 17) == 0
puts bitwise_or(32, 17) == 49
puts bitwise_xor(32, 17) == 49
puts bitwise_and(13, 19) == 1
puts bitwise_or(13, 19) == 31
puts bitwise_xor(13, 19) == 30