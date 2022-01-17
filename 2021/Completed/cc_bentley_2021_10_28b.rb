# Easy - Numbers to Arrays and Vice Versa
# Write two functions:
# to_array(), which converts a number to an array of its digits.
# to_number(), which converts an array of digits back to its number.
# Examples
# to_array(235) ➞ [2, 3, 5]
# to_array(0) ➞ [0]
# to_number([2, 3, 5]) ➞ 235
# to_number([0]) ➞ 0
# Notes
# All test cases will be weakly positive numbers: >= 0

def to_array(num)
  num.to_s.split("").map(&:to_i)
end

def to_number(arr)
  arr.join('').to_i
end

puts to_array(235) == [2, 3, 5]
puts to_array(19) == [1, 9]
puts to_array(0) == [0]
puts to_number([2, 3, 5]) == 235
puts to_number([1, 9]) == 19
puts to_number([0]) == 0