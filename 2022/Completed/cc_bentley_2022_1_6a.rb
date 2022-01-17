# Easy - Valid Division
# Create a function that takes a division equation d and checks if it will return a
# whole number without decimals after dividing.
# Examples
# valid_division("6/3") ➞ true
# valid_division("30/25") ➞ false
# valid_division("0/3") ➞ true
# Notes
# Return "invalid" if division by zero.

def valid_division(d)
  split_array = d.split('/').map(&:to_i)
  split_array[1] == 0 ? 'invalid' : split_array[0] % split_array[1] == 0
end

puts valid_division("6/3") == true
puts valid_division("30/25") == false
puts valid_division("0/3") == true
puts valid_division("13/12") == false
puts valid_division("329/329") == true
puts valid_division("0/0") == "invalid"
puts valid_division("10/0") == "invalid"
puts valid_division("20/5") == true