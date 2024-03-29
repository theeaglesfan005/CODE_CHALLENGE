# Medium - Recursion: Length of a String
# Write a function that returns the length of a string. Make your function recursive.
# Examples
# length("apple") ➞ 5
# length("make") ➞ 4
# length("a") ➞ 1
# length("") ➞ 0

def length(s)
  s.empty? ? 0 : 1 + length(s.chop)
end

puts length('shipment') == 8
puts length('apple') == 5
puts length('make') == 4
puts length('a') == 1
puts length('') == 0

# puts length("shipment") == 8
# raise("Function should be called more than once.") unless count != 1
# count = 0
# puts length("apple") == 5
# raise("Function should be called more than once.") unless count != 1
# count = 0
# puts length("make") == 4
# raise("Function should be called more than once.") unless count != 1
# count = 0
# puts length("a") == 1
# puts length("") == 0
