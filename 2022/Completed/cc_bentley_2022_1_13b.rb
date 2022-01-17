# Medium - Count the Number of Duplicate Characters
# Create a function that returns the amount of duplicate characters in a string. It will
# be case sensitive and spaces are included. If there are no duplicates, return 0.
# Examples
# duplicates("Hello World!") ➞ 3
# "o" = 2, "l" = 3.
# "o" is duplicated 1 extra time and "l" is duplicated 2 extra times.
# Hence 1 + 2 = 3
# duplicates("foobar") ➞ 1
# duplicates("helicopter") ➞ 1
# duplicates("birthday") ➞ 0
# If there are no duplicates, return 0
# Notes
# Make sure to only start counting the second time a character appears.

def duplicates(str)
  duplicates = str.chars.group_by { |char| char }.select { |_, value| value.size > 1 }
  duplicates.values.flatten.size - duplicates.keys.size
end

puts duplicates("Hello World!") == 3
puts duplicates("birthday") == 0
puts duplicates("helicopter") == 1
puts duplicates("foobar") == 1
puts duplicates("The Quick Brown Fox Jumps Over the Lazy Dog") == 14
puts duplicates("donald trump") == 1
puts duplicates("Row, row, row your boat Gently down the stream Merrily merrily, merrily, merrily Life is but a dream.") == 77
puts duplicates("Gen'rals gathered in their masses,Just like witches at black masses") == 45
puts duplicates("Evil minds that plot destruction,Sorcerer of death's construction") == 43
puts duplicates("gamer") == 0
puts duplicates("gamer gang") == 3