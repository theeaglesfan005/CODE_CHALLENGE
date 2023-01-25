# Mini Sudoku
#
# A Sudoku is a 9x9 grid that is completed when every 3x3 square, row and column consists of the numbers 1-9.
#
# For this task, you will be given a completed 3x3 square, in the form of a two-dimensional array.
# Create a function that checks to make sure this 3x3 square contains each number from 1-9 exactly once.
# Make sure there are no duplicates, and no numbers outside this range.
#
# Examples
# is_mini_sudoku([[1, 3, 2], [9, 7, 8], [4, 5, 6]]) ➞ true
#
# is_mini_sudoku([[1, 1, 3], [6, 5, 4], [8, 7, 9]]) ➞ false
# # The 1 is repeated twice
#
# is_mini_sudoku([[0, 1, 2], [6, 4, 5], [9, 8, 7]]) ➞ false
# # The 0 is included (outside range)
#
# is_mini_sudoku([[8, 9, 2], [5, 6, 1], [3, 7, 4]]) ➞ true

def is_mini_sudoku(square)
  square.flatten.select(&:positive?).uniq.sort.size == 9
end

puts is_mini_sudoku([[1, 3, 2], [9, 7, 8], [4, 5, 6]]) == true
puts is_mini_sudoku([[1, 1, 3], [6, 5, 4], [8, 7, 9]]) == false
puts is_mini_sudoku([[0, 1, 2], [6, 4, 5], [9, 8, 7]]) == false
puts is_mini_sudoku([[8, 9, 2], [5, 6, 1], [3, 7, 4]]) == true
puts is_mini_sudoku([[2, 3, 4], [6, 7, 7], [8, 9, 1]]) == false
puts is_mini_sudoku([[6, 5, 9], [4, 3, 8], [2, 1, 7]]) == true
puts is_mini_sudoku([[4, 3, 5], [8, 1, 2], [9, 6, 7]]) == true
puts is_mini_sudoku([[4, 3, 5], [8, 6, 2], [9, 6, 7]]) == false
