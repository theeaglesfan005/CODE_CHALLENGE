# Hard - Return Duplicate Numbers.txt
#
# Given an array nums where each integer is between 1 and 100, return a sorted array containing only duplicate numbers from the given nums array.
#
# Examples
# duplicate_nums([1, 2, 3, 4, 3, 5, 6]) ➞ [3]
# duplicate_nums([81, 72, 43, 72, 81, 99, 99, 100, 12, 54]) ➞ [72, 81, 99]
# duplicate_nums([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) ➞ nil
#
# Notes
# The given array won't contain the same number three times.

def duplicate_nums(nums)
	nums.detect{ |i| nums.count(i) > 1 } ? nums.group_by{ |i| i }.select { |i, v| v.size > 1 }.map(&:first).sort : nil

end

puts duplicate_nums([1, 2, 3, 4, 3, 5, 6]) == [3]
puts duplicate_nums([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == nil
puts duplicate_nums([20, 30, 40, 30, 20, 40]) == [20, 30, 40]
puts duplicate_nums([100, 59, 12, 13, 54, 76, 100, 14, 12]) == [12, 100]
puts duplicate_nums([81, 72, 43, 72, 81, 99, 99, 100, 12, 54]) == [72, 81, 99]
puts duplicate_nums([11, 22, 33, 44, 55, 44, 33, 22, 11]) == [11, 22, 33, 44]