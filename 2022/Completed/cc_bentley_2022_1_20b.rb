# Medium - Combinations
# Create a function that takes a variable number of arguments, each argument
# representing the number of items in a group. The function should return the
# number of permutations (combinations) of choices you would have if you selected
# one item from each group.
# Examples
# combinations(2, 3) ➞ 6
# combinations(3, 7, 4) ➞ 84
# combinations(2, 3, 4, 5) ➞ 120
# Notes
# Don't overthink this one.
# Input may include the number zero.

def combinations(*items)
  items.reject(&:zero?).inject(:*)
end

puts combinations(2) == 2
puts combinations(2, 3) == 6
puts combinations(3, 5) == 15
puts combinations(5, 6, 7) == 210
puts combinations(5, 5, 5, 5) == 625
puts combinations(3, 6, 9) == 162
puts combinations(2, 3, 4, 5, 6, 7, 8, 9, 10) == 3628800
puts combinations(4, 5, 6) == 120
puts combinations(5, 6, 7, 8) == 1680
puts combinations(6, 7, 0) == 42