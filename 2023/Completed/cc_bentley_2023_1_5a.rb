# War of Numbers
#
# There's a great war between the even and odd numbers. Many numbers already lost their lives in this war and it's your
# task to end this. You have to determine which group sums larger: the evens, or the odds. The larger group wins.
#
# Create a function that takes an array of integers, sums the even and odd numbers separately,
# then returns the difference between the sum of the even and odd numbers.
#
# Examples
# war_of_numbers([2, 8, 7, 5]) ➞ 2
# 	# 2 + 8 = 10
# 	# 7 + 5 = 12
# 	# 12 is larger than 10
# 	# So we return 12 - 10 = 2
#
# war_of_numbers([12, 90, 75]) ➞ 27
# war_of_numbers([5, 9, 45, 6, 2, 7, 34, 8, 6, 90, 5, 243]) ➞ 168
#
# Notes
# The given array contains only positive integers.


def war_of_numbers(arr)
  (arr.select(&:even?).reduce(:+) - arr.select(&:odd?).reduce(:+)).abs
end

puts war_of_numbers([5, 9, 45, 6, 2, 7, 34, 8, 6, 90, 5, 243]) == 168
puts war_of_numbers([654, 7, 23, 3, 78, 4, 56, 34]) == 793
puts war_of_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9]) == 5
puts war_of_numbers([97, 83, 209, 141, 134, 298, 110, 207, 229, 275, 115, 64, 244, 278]) == 228
puts war_of_numbers([332, 92, 35, 315, 109, 168, 320, 230, 63, 323, 16, 204, 105, 17, 226, 157, 245, 44, 223, 136, 93]) == 83
puts war_of_numbers([322, 89, 36, 310, 297, 157, 251, 55, 264, 244, 200, 304, 25, 308, 311, 269, 303, 257, 6, 311, 307, 310, 50, 46, 54, 237, 59, 105, 267]) == 846
puts war_of_numbers([50, 100, 149, 1, 200, 199, 3, 2]) == 0
