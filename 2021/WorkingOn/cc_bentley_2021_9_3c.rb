# Factor Tractor - Hard
# Write a program to find all the prime factors of a given number. The program
# must return an array containing all the prime factors, sorted in ascending
# order. Remember that 1 is neither prime nor composite and should not be
# included in your output array.
#   Examples
# prime_factorize(25) ➞ [5, 5]
# prime_factorize(19) ➞ [19]
# prime_factorize(77) ➞ [7, 11]
# Notes
# Output array must be sorted in ascending order
# The only positive integer which is neither prime nor composite is 1.
#   Return an empty array if 1 is the input.

require 'prime'

def prime_factorize(num)

  Prime.each(100) do |num|
    p num
  end

  # prime_array = []
  # if num < 2
  #   prime_array.append(0)
  # elsif num == 2
  #   prime_array.append(num)
  # else
  #   Prime.each(100) do |num|
  #     p num
  #   end
  # end
end

puts prime_factorize(32)
# puts prime_factorize(32) == [2, 2, 2, 2, 2]
# puts prime_factorize(17) == [17]
# puts prime_factorize(35) == [5, 7]
# puts prime_factorize(2) == [2]
# puts prime_factorize(2) != [1, 2]
# puts prime_factorize(1) != [1]
# puts prime_factorize(35) != [7, 5]
# puts prime_factorize(2591) == [2591]
# puts prime_factorize(2532) == [2, 2, 3, 211]