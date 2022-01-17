# Easy - Find the Unique Letters
# Create a function that takes a string and returns the letters that occur only once.
# Examples
# find_letters("monopoly") ➞ ["m", "n", "p", "l", "y"]
# find_letters("balloon") ➞ ["b", "a", "n"]
# find_letters("analysis") ➞ ["n", "l", "y", "i"]
#
# Notes
# The final array should not include letters that appear more than once in the string.
# Return the letters in the sequence they were originally in, do not sort them.
# All letters will be in lowercase.

def find_letters(word)
  word.chars.select{ |e| word.count(e) < 2 }.uniq
end

puts find_letters("monopoly") == ["m", "n", "p", "l", "y"]
puts find_letters("balloon") == ["b", "a", "n"]
puts find_letters("analysis") == ["n", "l", "y", "i"]
puts find_letters("summer") == ["s", "u", "e", "r"]
puts find_letters("apple") == ["a", "l", "e"]
puts find_letters("commission") == ["c", "n"]
puts find_letters("fox") == ["f", "o", "x"]