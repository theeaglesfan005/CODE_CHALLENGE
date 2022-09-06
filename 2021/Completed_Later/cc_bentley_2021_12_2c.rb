# Medium - Digital Decipher
# In Digital Decipher, decoding is done by the simple subtraction of numbers in the
# key and the corresponding characters on a given array.
# Create a function that takes two arguments; a positive integer and an array of
# integers and returns a decoded message as string.
# Assign a unique number to each letter of the alphabet.
# a b c d e f g h i j k l m n o p q r s t u v w x y z
# 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
# There are some variations on the rules of encipherment. One version of the cipher rules are outlined below:
# eMessage = [20, 12, 18, 30, 21]
# key = 1939
# digital_decipher(eMessage, key) ➞ "scout"
# Subtract each key digit from eMessage consecutive digits:
# 20 12 18 30 21
# - 1 9 3 9 1
# ---------------
# 19 3 15 21 20
# Write the corresponding number against each character:
# s c o u t
# 19 3 15 21 20
# See the below example for a better understanding:
# eMessage = [14, 10, 22, 29, 6, 27, 19, 18, 6, 12, 8]
# key = 1939
# digital_decipher(eMessage, key) ➞ "masterpiece"
# 14 10 22 29 6 27 19 18 6 12 8
# - 1 9 3 9 1 9 3 9 1 9 3
# --------------------------------
# 13 1 19 20 5 18 16 9 5 3 5
# m a s t e r p i e c e
# Examples
# digital_decipher([20, 12, 18, 30, 21], 1939) ➞ "scout"
# digital_decipher([14, 30, 11, 1, 20, 17, 18, 18], 1990) ➞ "mubashir"
# digital_decipher([6, 4, 1, 3, 9, 20], 100) ➞ "edabit"
#
def digital_decipher(eMessage, key)
  cipher = { 1 => 'a', 2 => 'b', 3 => 'c', 4 => 'd', 5 => 'e', 6 => 'f', 7 => 'g', 8 => 'h', 9 => 'i', 10 => 'j',
             11 => 'k', 12 => 'l', 13 => 'm', 14 => 'n', 15 => 'o', 16 => 'p', 17 => 'q', 18 => 'r', 19 => 's',
             20 => 't', 21 => 'u', 22 => 'v', 23 => 'w', 24 => 'x', 25 => 'y', 26 => 'z' }

  key_ary = key.to_s.ljust(eMessage.length, key.to_s).split('').map(&:to_i)
  dec_ary = eMessage.zip(key_ary).map { |arr| arr.inject(:-) }

  dec_ary.map! { |x| cipher[x] || dec_ary }.join('')
end

puts digital_decipher([14, 10, 22, 29, 6, 27, 19, 18, 6, 12, 8], 1939) == "masterpiece"
puts digital_decipher([20, 12, 18, 30, 21], 1939) == "scout"
puts digital_decipher([15, 17, 14, 17, 19, 7, 21, 7, 2, 20, 20], 12) == "nomoretears"
puts digital_decipher([14, 30, 11, 1, 20, 17, 18, 18], 1990) == "mubashir"
puts digital_decipher([17, 10, 15, 16, 20, 29, 5, 21], 1947) == "pakistan"
puts digital_decipher([17, 10, 17, 14, 20, 29, 7, 19, 2, 18, 24, 11, 16, 27, 9, 10], 1965) == "pakistanairforce"
puts digital_decipher([6, 4, 1, 3, 9, 20], 100) == "edabit"
