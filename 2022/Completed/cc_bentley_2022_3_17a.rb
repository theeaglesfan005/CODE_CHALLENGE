# Easy - Is the Word an Isogram?
#
# 	An isogram is a word that has no duplicate letters. Create a function that takes a string and returns either true or false depending on whether or not it's an "isogram".
#
# Examples
#
# 	- is_isogram("Algorism") ➞ true
# 	- is_isogram("PasSword") ➞ false
# 		# Not case sensitive.
# 	- is_isogram("Consecutive") ➞ false
#
# Notes
#
# 	- Ignore letter case (should not be case sensitive).
# 	- All test cases contain valid one word strings.

def is_isogram(str)
  str.downcase !~ /([a-z]).*\1/
end

puts is_isogram("Algorism") == true
puts is_isogram("PasSword") == false
puts is_isogram("Dermatoglyphics") == true
puts is_isogram("Cat") == true
puts is_isogram("Filmography") == true
puts is_isogram("Consecutive") == false
puts is_isogram("Bankruptcies") == true
puts is_isogram("Unforgivable") == true
puts is_isogram("Unpredictably") == true
puts is_isogram("Moose") == false