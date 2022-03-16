# Hard - Advanced Array Sort
# Create a function that takes an array of numbers or strings and returns an array
# with the items from the original array stored into subarrays. Items of the same value should be in the same subarray.
# Examples
# e13a1641a48d147057ef6050ebff42b04fc842ae
# advanced_sort([2, 1, 2, 1]) ➞ [[2, 2], [1, 1]]
# advanced_sort([5, 4, 5, 5, 4, 3]) ➞ [[5, 5, 5], [4, 4], [3]]
# advanced_sort(["b", "a", "b", "a", "c"]) ➞ [["b", "b"], ["a", "a"], ["c"]]
# Notes
# The subarrays should be returned in the order of each element's first appearance in the given array.

def advanced_sort(arr)
  arr.group_by{ |x| x }.values
end

puts advanced_sort([1,2,1,2]) == [[1,1],[2,2]]
puts advanced_sort([2,1,2,1]) == [[2,2],[1,1]]
puts advanced_sort([3,2,1,3,2,1]) == [[3,3],[2,2],[1,1]]
puts advanced_sort([5,5,4,3,4,4]) == [[5,5],[4,4,4],[3]]
puts advanced_sort([80,80,4,60,60,3]) == [[80,80],[4], [60,60],[3]]
puts advanced_sort(['c','c','b','c','b',1,1]) == [['c','c','c'],['b','b'],[1,1]]
puts advanced_sort([1234, 1235, 1234, 1235, 1236, 1235]) == [[1234, 1234],[1235, 1235, 1235],[1236]]
puts advanced_sort(['1234', '1235', '1234', '1235', '1236', '1235']) == [['1234', '1234'],['1235', '1235', '1235'],['1236']]