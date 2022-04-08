# Medium - Find the Largest Prime within a Range
#
# Given two integers as arguments, create a function that finds the largest prime within the range of the two integers.
#
# Examples
# fat_prime(2, 10) ➞ 7
# # range [2, 3, 4, 5, 6, 7, 8, 9, 10] and the largest prime is 7.
#
# fat_prime(10, 2) ➞ 7
# # [10, 9, 8, 7, 6, 5, 4, 3, 2] and the largest prime is 7.
#
# fat_prime(4, 24) ➞ 23
# # range [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24] the largest prime is 23.
#
# Notes
# All numbers will be positive integers.

require 'prime'
def THICC_PRIME(a, b)
  high_prime = 0
  if a > b
    a.downto(b).each do |n|
      high_prime = n if n.prime? && n > high_prime
    end
  else
    (a...b).each do |n|
      high_prime = n if n.prime? && n > high_prime
    end
  end

  high_prime
end

puts THICC_PRIME(2, 10) == 7
puts THICC_PRIME(10, 2) == 7
puts THICC_PRIME(4, 24) == 23
puts THICC_PRIME(16, 100) == 97
puts THICC_PRIME(7, 49) == 47
puts THICC_PRIME(200, 100) == 199
puts THICC_PRIME(400, 1000) == 997
puts THICC_PRIME(3297, 32970) == 32969
puts THICC_PRIME(43297, 23175) == 43291
puts THICC_PRIME(100000, 400000) == 399989