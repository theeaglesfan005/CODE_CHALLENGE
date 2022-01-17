# Medium - The DECIMATOR
# Write a DECIMATOR function which takes a string and decimates it (i.e. it
# removes the last 1/10 of the characters).
# Always round up: if the string has 21 characters, 1/10 of the characters would be
# 2.1 characters, hence the DECIMATOR removes 3 characters.
# The DECIMATOR shows no mercy!
# Examples
# decimator("1234567890") ➞ "123456789"
# 10 characters, removed 1.
# decimator("1234567890AB") ➞ "1234567890"
# 12 characters, removed 2.
# decimator("123") ➞ "12"
# 3 characters, removed 1.
# decimator("123456789012345678901") ➞ "123456789012345678"
# 21 characters, removed 3.
# Notes
# Make sure to remove characters from the end of the string.

def decimator(str)
  decimator_value = 1.0 / 10.0

  str[0...-(str.length * decimator_value).to_f.ceil]
end

puts decimator("1234567890") == "123456789"
puts decimator("1234567890AB") == "1234567890"
puts decimator("123") == "12"
puts decimator("123456789012345678901") == "123456789012345678"
puts decimator("ABCDEFGHIJKLMNOPQRSTUVWXYZ") == "ABCDEFGHIJKLMNOPQRSTUVW"
puts decimator("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz") == "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrst"
puts decimator("A") == ""
puts decimator("") == ""