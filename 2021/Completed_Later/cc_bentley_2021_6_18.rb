# frozen_string_literal: true
#
# Longest Sequence of Consecutive Zeroes
#
# Write a function that returns the longest sequence of consecutive zeroes in a binary string.
#
# Examples
# longest_zero("01100001011000") ➞ "0000"
# longest_zero("100100100") ➞ "00"
# longest_zero("11111") ➞ ""
#
# Notes
# If no zeroes exist in the input, return an empty string.

# implement this method
def longest_zero(s)
  s.scan(/0+/).max_by(&:size) || ''
end

puts longest_zero('01100001011000') == '0000'
puts longest_zero('100100100') == '00'
puts longest_zero('111101') == '0'
puts longest_zero('1000000000011101') == '0000000000'
puts longest_zero('100001110000100000') == '00000'
puts longest_zero('101001101') == '00'
puts longest_zero('101010101') == '0'
puts longest_zero('1001001') == '00'
puts longest_zero('111111') == ''
