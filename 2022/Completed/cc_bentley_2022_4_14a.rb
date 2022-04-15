# Count the Letters and Digits
#
# Write a function that takes a string and calculates the number of letters and digits within it. Return the result in a hash.
#
# Examples
# count_all("Hello World") ➞ { "LETTERS":  10, "DIGITS": 0 }
# count_all("H3ll0 Wor1d") ➞ { "LETTERS":  7, "DIGITS": 3 }
# count_all("149990") ➞ { "LETTERS": 0, "DIGITS": 6 }
#
# Notes
# Tests contain only alphanumeric characters.
# Spaces are not letters.
# All tests contain valid strings.

def count_all(str)
  { "LETTERS": str.count('a-zA-Z'), "DIGITS": str.count('0-9') }
end

puts count_all("Hello") == { "LETTERS": 5, "DIGITS": 0 }
puts count_all("137") == { "LETTERS": 0, "DIGITS": 3 }
puts count_all("H3LL0") == { "LETTERS": 3, "DIGITS": 2 }
puts count_all("149990") == { "LETTERS": 0, "DIGITS": 6 }
puts count_all("edabit 2018") == { "LETTERS": 6, "DIGITS": 4 }
puts count_all("    ") == { "LETTERS": 0, "DIGITS": 0 }