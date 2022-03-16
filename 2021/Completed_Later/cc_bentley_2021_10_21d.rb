# Hard - Goldbach Conjecture
# Goldbach's Conjecture is amongst the oldest and well-known unsolved
# mathematical problems. In correspondence with Leonhard Euler in 1742,
# German mathematician Christian Goldbach made a conjecture, which states:
# "Every even whole number greater than 2 is the sum of two prime numbers."
#
# Even though it's been thoroughly tested and analyzed and seems to be true,
# it hasn't been proved yet (thus, remaining a conjecture.)
# Create a function that takes a number and returns an array as per the following rules:
# If the given number is odd and greater than two, return an empty array.
# If the given number is even and greater than two, return an array of two prime numbers whose sum is the given input.
# Both prime numbers must be the farthest (with the greatest difference).
#
# Examples
# goldbach_conjecture(1) ➞ []
# goldbach_conjecture(7) ➞ []
# goldbach_conjecture(14) ➞ [3, 11]
#
# Notes
# Return array in sequence: [smaller, bigger]
require 'prime'

def goldbach_conjecture(n)

  first_prime = Prime.find { |i| [i, n - i] if (n - i).prime? }
  second_prime = n - first_prime

  [first_prime, second_prime]

end

puts goldbach_conjecture(4) == [2, 2]
puts goldbach_conjecture(8) == [3, 5]
puts goldbach_conjecture(10) == [3, 7]
puts goldbach_conjecture(24) == [5, 19]
puts goldbach_conjecture(100) == [3, 97]
puts goldbach_conjecture(1234) == [3, 1231]
puts goldbach_conjecture(1400) == [19, 1381]
puts goldbach_conjecture(1566) == [7, 1559]
puts goldbach_conjecture(3444) == [11, 3433]