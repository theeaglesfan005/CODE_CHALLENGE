# Very Hard - Numbers First, Letters Second
#
# Write a function that sorts array while keeping the array structure
# Numbers should be first then letters both in ascending order.
#
# Examples
#
# num_then_char([[1, 2, 4, 3, "a", "b"],[6, "c", 5], [7, "d"],["f",    "e", 8]]) ➞ [[1, 2, 3, 4, 5, 6],[7, 8, "a"],["b", "c"],["d", "e", "f"]]
# num_then_char([[1, 2, 4.4, "f", "a", "b"],[0], [0.5, "d","X",3,"s"],["f", "e", 8],["p","Y","Z"],[12,18]]) ➞ [[0, 0.5, 1, 2, 3, 4.4],[8],[12, 18, "X", "Y", "Z"],["a", "b", "d"],["e", "f", "f"],["p", "s"]]
#
# Notes
#
# Test cases will contain integer and float numbers and single letters.
def num_then_char(arr)
  #arr.sort_by { |a, b| a.to_s }.inspect
  arr.map(&:to_s).sort_by { |a, b| a.to_s }.inspect

end

puts num_then_char([[1, 2, 4, 3, "a", "b"], [6, "c", 5], [7, "d"], ["f", "e", 8]])

# puts num_then_char([[1, 2, 4, 3, "a", "b"], [6, "c", 5], [7, "d"], ["f", "e", 8]]) == [[1, 2, 3, 4, 5, 6], [7, 8, 'a'], ['b', 'c'], ['d', 'e', 'f']]
# puts num_then_char([[1, 2, 4.4, "f", "a", "b"], [0], [0.5, "d", "X", 3, "s"], ["f", "e", 8], ["p", "Y", "Z"], [12, 18]]) == [[0, 0.5, 1, 2, 3, 4.4], [8], [12, 18, 'X', 'Y', 'Z'], ['a', 'b', 'd'], ['e', 'f', 'f'], ['p', 's']]
# puts num_then_char([[10, 2], ["a", 3], [2.2, "d", "h", 6, "s", 14, 1], ["f", "e"], ["p", "y", "z", "V"], [5]]) == [[1, 2], [2.2, 3], [5, 6, 10, 14, 'V', 'a', 'd'], ['e', 'f'], ['h', 'p', 's', 'y'], ['z']]
# puts num_then_char([[10, 2, 6, 6.5, 8.1, "q", "w", "a", "s"], ["f", 4], [2, 3, "h", 6, "x", 1, 0], ["g"], ["p", 7, "j", "k", "l"], [5, "C", "A", "B"], ["L", 9]]) == [[0, 1, 2, 2, 3, 4, 5, 6, 6], [6.5, 7], [8.1, 9, 10, 'A', 'B', 'C', 'L'], ['a'], ['f', 'g', 'h', 'j', 'k'], ['l', 'p', 'q', 's'], ['w', 'x']]
