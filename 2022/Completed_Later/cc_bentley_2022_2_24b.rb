# Medium - Count Number of Identical Arrays
#
# Create a function that takes four arrays as arguments and returns a count of the total number of identical arrays.
#
# Examples
#
# - count_identical_arrays([0, 0, 0], [0, 1, 2], [0, 0, 0], [2, 1, 0]) ➞ 2
# - count_identical_arrays([0, 1, 0], [0, 1, 2], [0, 2, 0], [2, 1, 0]) ➞ 0
# - count_identical_arrays([0, 1, 2], [0, 1, 2], [0, 1, 2], [2, 1, 0]) ➞ 3

def count_identical_arrays(arr1, arr2, arr3, arr4)
 count = [arr1, arr2, arr3, arr4].tally.values.max

 count > 1 ? count : 0
end

puts count_identical_arrays([0, 0, 0], [0, 1, 2], [0, 0, 0], [2, 1, 0]) == 2
puts count_identical_arrays([0, 1, 0], [0, 1, 2], [0, 2, 0], [2, 1, 0]) == 0
puts count_identical_arrays([0, 1, 2], [0, 1, 2], [0, 1, 2], [2, 1, 0]) == 3