# Hard - Sum of v0w3ls
# Create a function that takes a string and returns the sum of vowels, where some vowels are considered numbers.
#
# Vowel	Number
# A		4
# E		3
# I		1
# O		0
# U		0
#
# Examples
#
# sum_of_vowels("Let\'s test this function.") ➞ 8
# sum_of_vowels("Do I get the correct output?") ➞ 10
# sum_of_vowels("I love edabit!") ➞ 12
#
# Notes
# Vowels are case-insensitive (e.g. A = 4 and a = 4).

def sum_of_vowels(sentence)
  count = 0

  sentence.downcase.split('').each do |i|
    case i
    when "a"
      count = count + 4
    when "e"
      count = count + 3
    when "i"
      count = count + 1
    else
      count = count + 0
    end
  end

  count
end

puts sum_of_vowels('Let\'s test this function.') == 8
puts sum_of_vowels('Do I get the correct output?') == 10
puts sum_of_vowels('I love edabit!') == 12
puts sum_of_vowels('Will you still need me, will you still feed me when I\'m 64?') == 26
puts sum_of_vowels('The greatest glory in living lies not in never falling, but in rising every time we fall.') == 52