# frozen_string_literal: true
# Medium - No Good Numbers
#
# A positive number's population is the sum of 1's in its binary representation.
#
# An evil number has an even numbered population.
# An odious number has an odd numbered population.
# A number is pernicious if its population is a prime number.
#
# Create a function that takes a number as an argument and returns a sorted array of all its descriptors ("Evil", "Odious", or "Pernicious").
#
# Examples
# how_bad(7) ➞ ["Odious", "Pernicious"]
# 	# 7 in binary is "111".
# 	# 1 + 1 + 1 = 3 in "111" means "Odious" should be added to the array answer.
# 	# 3 is a prime number, meaning "Pernicious" should also be added.
#
# how_bad(17) ➞ ["Evil", "Pernicious"]
# 	# 17 in binary is "10001".
# 	# 1 + 1 = 2 in "10001" means "Evil" should be added to the array answer.
# 	# 2 is a prime number, meaning "Pernicious" should also be added.
#
# how_bad(23) ➞ ["Evil"]
# 	# 23 in binary is "10111".
# 	# Four 1's in "10111" means "Evil" should be added to the array answer.
# 	# 4 is not a prime number, meaning "Pernicious" should not be added.

require 'prime'
def how_bad(num)
  descriptions = []
  bin_num = num.to_s(2).split('').map(&:to_i).sum

  descriptions << 'Evil' if bin_num.even?
  descriptions << 'Odious' if bin_num.odd?
  descriptions << 'Pernicious' if bin_num.prime?

  descriptions
end

puts how_bad(7) == ['Odious','Pernicious']
puts how_bad(97) == ['Odious','Pernicious']
puts how_bad(66) == ['Evil','Pernicious']
puts how_bad(77) == ['Evil']
puts how_bad(128) == ['Odious']
puts how_bad(666) == ['Odious','Pernicious']
puts how_bad(987654321) == ['Odious','Pernicious']
puts how_bad(98765) == ['Evil']
