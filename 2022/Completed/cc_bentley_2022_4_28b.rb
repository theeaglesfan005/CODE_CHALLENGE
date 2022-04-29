# Medium - Remove Surrounding Duplicate Items
#
# Create a function that takes a sequence of either strings or integers, removes the surrounding duplicates and returns
# an array of items without any items with the same value next to each other and preserves the original order of items.
#
# Examples
# unique_in_order("AAAABBBCCDAABBB") ➞ ["A", "B", "C", "D", "A", "B"]
# unique_in_order("ABBCcAD") ➞ ["A", "B", "C", "c", "A", "D"]
# unique_in_order([1, 2, 2, 3, 3]) ➞ [1, 2, 3]
#
# Notes
# The initial sequence of items can be either a string or an array.
# Tests are case sensitive.

def unique_in_order(sequence)
  if sequence.is_a?(String)
    sequence.split("").chunk_while(&:==).map(&:first)
  else
    sequence.chunk_while(&:==).map(&:first)
  end
end

puts unique_in_order("AAAABBBCCDAABBB") == ["A", "B", "C", "D", "A", "B"]
puts unique_in_order("ABBCcAD") == ["A", "B", "C", "c", "A", "D"]
puts unique_in_order([1, 2, 2, 3, 3]) == [1, 2, 3]
puts unique_in_order("12333355555522211133") == ["1", "2", "3", "5", "2", "1", "3"]
puts unique_in_order("uuUfffFgGggYtt76%5$$$") == ["u", "U", "f", "F", "g", "G", "g", "Y", "t", "7", "6", "%", "5", "$"]
puts unique_in_order(["1", "2", "2", "3", "3"]) == ["1", "2", "3"]
puts unique_in_order([3, 7, 3, 8, 4]) == [3, 7, 3, 8, 4]
puts unique_in_order("ABC") == ["A", "B", "C"]
puts unique_in_order("$$$%%%$$$%%%") == ["$", "%", "$", "%"]
puts unique_in_order([1, 1, 1, "A", "B", "B"]) == [1, "A", "B"]
