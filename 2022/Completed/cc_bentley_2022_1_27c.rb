# Hard - Count a Specific Digit
# Write a function that counts the number of times a specific digit occurs in a range
# (inclusive). The function will look like:
# digit_occurrences(min, max, digit) ➞ number of times digit occurs
# Examples
# digit_occurrences(51, 55, 5) ➞ 6
# [51, 52, 53, 54, 55] : 5 occurs 6 times
# digit_occurrences(1, 8, 9) ➞ 0
# digit_occurrences(-8, -1, 8) ➞ 1
# digit_occurrences(71, 77, 2) ➞ 1
# Notes
# Ranges can be negative.
# min <= max

def digit_occurrences(min, max, digit)
  (min..max).to_a.join('').scan(digit.to_s).length
end

puts digit_occurrences(51, 55, 5) == 6
puts digit_occurrences(1, 8, 9) == 0
puts digit_occurrences(71, 77, 2) == 1
puts digit_occurrences(1, 14, 4) == 2
puts digit_occurrences(20, 30, 2) == 11
puts digit_occurrences(18, 37, 3) == 10
puts digit_occurrences(5, 335, 6) == 63
puts digit_occurrences(-19, 19, 0) == 3
puts digit_occurrences(-8, -1, 8) == 1
puts digit_occurrences(-5, -5, 4) == 0
puts digit_occurrences(-5, -5, 5) == 1
puts digit_occurrences(-50, -45, 4) == 5
puts digit_occurrences(-500, -45, 4) == 190