# Medium - Sum of the Items in an Array
# Create a function that takes an array and returns the sum of all the items in
# that array.
# Examples
# sum_arr([1, 2, 3]) ➞ 6
# 1 + 2 + 3 = 6
# sum_arr([1, [2, [1]], 3]) ➞ 7
# 1 + 2 + 1 + 3 = 7
# Notes
# An item in the array can be another array.

def sum_arr(arr); end

puts sum_arr([1, 2, 3]) == 6
puts sum_arr([1, [1, 2], [3, 1]]) == 8
puts sum_arr([[1, 1], [2, 8], 8]) == 20
puts sum_arr([1, 2]) == 3
puts sum_arr([1, [2, [1]], 3]) == 7