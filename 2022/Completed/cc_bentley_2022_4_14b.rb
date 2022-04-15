# Cumulative Array Sum
#
# Create a function that takes an array of numbers and returns an array where each number is the sum of itself + all previous numbers in the array.
#
# Examples
# cumulative_sum([1, 2, 3]) ➞ [1, 3, 6]
# cumulative_sum([1, -2, 3]) ➞ [1, -1, 2]
# cumulative_sum([3, 3, -2, 408, 3, 3]) ➞ [3, 6, 4, 412, 415, 418]
#
# Note
# Return an empty array if the input is an empty array.

def cumulative_sum(arr)
  arr.inject([]) { |x, y| x + [(x.last || 0) + y] }
end

puts cumulative_sum([]) == []
puts cumulative_sum([1]) == [1]
puts cumulative_sum([1, 2, 3]) == [1, 3, 6]
puts cumulative_sum([-1, -2, -3]) == [-1, -3, -6]
puts cumulative_sum([1, -2, 3]) == [1, -1, 2]
puts cumulative_sum([3, 3, -2, 408, 3, 3, 0, 66, 2, -2, 2, 3, 4, 2, -47, 3, 3, 2]) == [3, 6, 4, 412, 415, 418, 418, 484, 486, 484, 486, 489, 493, 495, 448, 451, 454, 456]
