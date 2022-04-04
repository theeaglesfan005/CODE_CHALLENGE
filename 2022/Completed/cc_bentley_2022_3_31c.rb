# Medium - Delete Occurrences of Extra Elements in an Array
#
# Create a function that takes two arguments: an array arr and a number num. If an element occurs in arr more than num times, remove the extra occurrence(s) and return the result.
#
# Examples
# delete_occurrences([1, 1, 1, 1], 2) ➞ [1, 1]
# delete_occurrences([13, true, 13, nil], 1) ➞ [13, true, nil]
# delete_occurrences([true, true, true], 3) ➞ [true, true, true]
#
# Notes
# Do not alter the order of the original array.

def delete_occurrences(arr, num)
  output = []
  arr.each { |i| output << i if output.count(i) < num }
  output
end

puts delete_occurrences([1, 1, 1, 1], 2) == [1, 1]
puts delete_occurrences([true, true, true], 3) == [true, true, true]
puts delete_occurrences([13, true, 13, nil], 1) == [13, true, nil]
puts delete_occurrences([], 100) == []
puts delete_occurrences(["John", "John", "Marry", "Marry"], 1) == ["John", "Marry"]
puts delete_occurrences(["Marry", "John", nil, "John", false, "John", 0, "John", "Marry", "Marry", "John"], 3) == ["Marry", "John", nil, "John", false, "John", 0, "Marry", "Marry"]
puts delete_occurrences([20, 37, 20, 21], 1) == [20, 37, 21]
puts delete_occurrences([1, 1, 3, 3, 7, 2, 2, 2, 2], 3) == [1, 1, 3, 3, 7, 2, 2, 2]
puts delete_occurrences([1, 2, 3, 1, 1, 2, 1, 2, 3, 3, 2, 4, 5, 3, 1],3) == [1, 2, 3, 1, 1, 2, 2, 3, 3, 4, 5]