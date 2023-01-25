# Does a Number Exist?
#
# Create a function which validates whether a given number exists, and could represent a real life quantity.
# Inputs will be given as a string.
#
# Examples
# 	- valid_str_number("3.2") ➞ true
# 	- valid_str_number("324") ➞ true
# 	- valid_str_number("54..4") ➞ false
# 	- valid_str_number("number") ➞ false
#
# Notes
# 	- Accept numbers such as .5 and 0003.

def valid_str_number(n)
  n.match? /^\d*[.]?\d*$/
end

puts valid_str_number("3.2") == true
puts valid_str_number("324") == true
puts valid_str_number("54..4") == false
puts valid_str_number("number") == false
puts valid_str_number(".5") == true
puts valid_str_number("03") == true
puts valid_str_number("3.e") == false
puts valid_str_number("1234321") == true
puts valid_str_number(".42.3") == false
puts valid_str_number("0000000") == true
puts valid_str_number("000.000") == true
