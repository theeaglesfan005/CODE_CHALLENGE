# c - Easy
# Create a function that takes an array as an argument and returns a new
# nested array for each element in the original array. The nested array must be
# filled with the corresponding element (string or number) in the original array
# and each nested array has the same amount of elements as the original
# array.
#   Examples
# multiply([4, 5]) ➞ [[4, 4], [5, 5]]
# multiply(["*", "%", "$"]) ➞ [["*", "*", "*"], ["%", "%", "%"], ["$", "$", "$"]]
# multiply(["A", "B", "C", "D", "E"]) ➞ [["A", "A", "A", "A", "A"], ["B", "B", "B", "B", "B"], ["C", "C", "C", "C", "C"], ["D", "D", "D", "D", "D"], ["E", "E", "E", "E", "E"]]
# Notes
# The given array contains numbers or strings.


def multiply(l)
  l_nested = []
  l.each do |i|
    l_nested.append(l.map { i })
  end

  l_nested
end

puts multiply(["*", "%", "$"]) == [["*", "*", "*"], ["%", "%", "%"], ["$", "$", "$"]]
puts multiply([4, 5]) == [[4, 4], [5, 5]]
puts multiply(["A", "B", "C", "D", "E"]) == [["A", "A", "A", "A", "A"], ["B", "B", "B", "B", "B"], ["C", "C", "C", "C", "C"], ["D", "D", "D", "D", "D"], ["E", "E", "E", "E", "E"]]
puts multiply([1]) == [[1]]