# Medium - Circular Shift
# Write a function that takes two arrays (arr1 and arr2) and an int n, and
#   returns true if the second array equals the first array shifted by n positions.
#   Otherwise, return false.
#   Examples
# circular_shift([1, 2, 3, 4], [3, 4, 1, 2], 2) ➞ true
# circular_shift([1, 1], [1, 1], 6) ➞ true
# circular_shift([0, 1, 2, 3, 4, 5], [3, 4, 5, 2, 1, 0], 3) ➞ false
# Notes
# The two lists will have the same length.
# n can be a negative value.

def circular_shift(arr1, arr2, n)
  arr1.rotate(n) == arr2
end

puts circular_shift([1, 2, 3, 4], [3, 4, 1, 2], 2) == true
puts circular_shift([1, 1], [1, 1], 6) == true
puts circular_shift([0, 1, 2, 3, 4, 5], [3, 4, 5, 2, 1, 0], 3) == false
puts circular_shift([0, 1, 2, 3], [1, 2, 3, 1], 1) == false
puts circular_shift(Array(0..32), Array(0..32), 0) == true
puts circular_shift([1, 2, 1], [1, 2, 1], 3) == true
puts circular_shift([5, 7, 2, 3], [2, 3, 5, 7], -2) == true