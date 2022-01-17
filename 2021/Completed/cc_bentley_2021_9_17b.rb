# Count Ones in a 2D Array - Easy
# Create a function to count the number of 1s in a 2D array.
#   Examples
# count_ones([[1, 0], [0, 0]]) ➞ 1
# count_ones([[1, 1, 1], [0, 0, 1], [1, 1, 1]]) ➞ 7
# count_ones([[1, 2, 3], [0, 2, 1], [5, 7, 33]]) ➞ 2

def count_ones(matrix)
  matrix.join(',').count('1')
end

puts count_ones([[1, 0, 1], [0, 0, 0], [0, 0, 1]]) == 3
puts count_ones([[1, 1, 1], [0, 0, 1], [1, 1, 1]]) == 7
puts count_ones([[1, 2, 3], [0, 2, 1], [5, 7, 33]]) == 2
puts count_ones([[5, 2, 3], [0, 2, 5], [5, 7, 33]]) == 0
puts count_ones([[5, 2], [0, 2], [5, 1]]) == 1
puts count_ones([[1, 1], [0, 1]]) == 3
puts count_ones([[0, 1], [0, 0]]) == 1