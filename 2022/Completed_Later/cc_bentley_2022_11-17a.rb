# Hard - Adding Both Ends Together
#
# Given an array of numbers, of any length, create a function which counts how many of those numbers pass the following

# criteria:
# 	- The first and last digits of a number must add to 10.
#
# Examples
# 	- add_ends([19, 46, 2098]) ➞ 3
# 	- add_ends([33, 44, -55]) ➞ 1
# 	- add_ends([]) ➞ 0
#
# Notes
# 	- All items in the array will be numbers.
# 	- Ignore negative signs (see example #2).
# 	- If the number contains only one digit, that digit will be the first and the last digit.
# 	- If given an empty array, return 0.

def add_ends(nums)
  ten_ends = 0
  nums.each do |i|
    i_ary = i.abs.to_s.split('').map(&:to_i)
    ten_ends += 1 if i_ary.first + i_ary.last == 10
  end
  ten_ends
end

puts add_ends([19, 46, 2098]) == 3
puts add_ends([33, 44, -55]) == 1
puts add_ends([]) == 0
puts add_ends([-91, 55, -33]) == 2
puts add_ends([100, -10, 1, 3, 2, 5, 2]) == 1 # author thinks 5 should count
puts add_ends([19, 28, 37, 46, 55, 64, 73, 82, 91]) == 9
puts add_ends([-19, -28, -37, -46, -55, -64, -73, -82, -91]) == 9