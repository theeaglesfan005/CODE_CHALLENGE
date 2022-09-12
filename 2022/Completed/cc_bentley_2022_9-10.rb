# Very Hard - International Standard Book Numbers
#
# The International Standard Book Number (ISBN) is a unique identifying number given to each published book.
# ISBNs assigned after January 2007 are 13 digits long (ISBN-13), however books with 10-digit ISBNs are still in wide use.
#
# An ISBN-10 is verified this way:
# 	- isbn10 = "0330301624"
#
# Line up the digits with the numbers 10 to 1:
# 0	3	3	0	3	0	1	6	2	4
# 10	9	8	7	6	5	4	3	2	1
#
# Multiply each digit with the number below it (the 10th digit in an ISBN can be an X. This last X simply means 10).
#
# Sum up the products:
# 	- 0 + 27 + 24 + 0 + 18 + 0 + 4 + 18 + 4 + 4 = 99
# 	- If the sum is divisible by 11, the ISBN-10 is valid.
#
# An ISBN-13 is verified this way:
# 	- isbn13 = "9780316066525"
#
# Line up the digits with alternating 1s and 3s:
# 9	7	8	0	3	1	6	0	6	6	5	2	5
# 1	3	1	3	1	3	1	3	1	3	1	3	1
#
# Multiply each digit with the number below it and get the sum:
# 	- 9 + 21 + 8 + 0 + 3 + 3 + 6 + 0 + 6 + 18 + 5 + 6 + 5 = 90
# 	- If the sum is divisible by 10, the ISBN-13 is valid.
#
# Create a function that takes a string of numbers (possibly with an X at the end) and...
#
# 	- Return "Invalid" if it is not a valid ISBN-10 or ISBN-13.
# 	- Return "Valid" if it is a valid ISBN-13.
# 	- If it is a valid ISBN-10, convert it into an ISBN-13 and return the ISBN-13 number.
#
# Convert a valid ISBN-10 to ISBN-13 by tacking 978 to the start, then changing the last digit (the check digit) so that
# the resulting number passes the ISBN-13 check (see resources for clarification).
#
# Examples
# 	- isbn13("9780316066525") ➞ "Valid"
# 	- isbn13("0330301824") ➞ "Invalid"
# 	- isbn13("0316066524") ➞ "9780316066525"

def isbn13(str)

  case str.length
  when 13
    (str.split('').map(&:to_i).map.with_index{ |v, i| (i % 2).zero? ? v : v * 3 }.inject(:+) % 10).zero? ? 'Valid' : 'Invalid'
  when 10
    str_dup = str.dup
    str10_ary = str_dup.split('').map(&:to_i)
    if str_dup[-1] == 'X'
      str10_ary.pop
      str10_ary << 10
      str10_ary.inspect
    end

    ([str10_ary, [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]].transpose.map { |x| x.reduce(:*) }.inject(:+) % 11).zero? ? valid_isbn10 = true : valid_isbn10 = false

    if valid_isbn10
      isbn10_ary = str_dup.gsub('X', '0').dup.prepend('978').split('').map(&:to_i)
      isbn10_ary[12] = 0
      while isbn10_ary.map.with_index{ |v, i| (i % 2).zero? ? v : v * 3 }.inject(:+) % 10 != 0
        isbn10_ary[12] = isbn10_ary[12] + 1
      end
      isbn10_ary.join('')
    elsif !valid_isbn10
      'Invalid'
    end
  else
    'Invalid'
  end

end

puts isbn13('9780316066525') =='Valid'
puts isbn13('9783866155237') =='Valid'
puts isbn13('9780345453747') =='Valid'
puts isbn13('031606652X') =='Invalid'
puts isbn13('9783876155237') =='Invalid'
puts isbn13('0345453747') =='Invalid'
puts isbn13('0316066524') =='9780316066525'
puts isbn13('3866155239') =='9783866155237'
puts isbn13('817450494X') =='9788174504944'
