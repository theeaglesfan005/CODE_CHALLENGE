# Easy - Product of All Odd Integers
#
# 	Create a function that returns the product of all odd integers in an array.
#
# Examples
#
# 	odd_product([3, 4, 1, 1, 5]) ➞ 15
# 	odd_product([5, 5, 8, 2, 4, 32]) ➞ 25
# 	odd_product([1, 2, 1, 2, 1, 2, 1, 2]) ➞ 1

def odd_product(arr)
  arr.select(&:odd?).reduce(1, :*)
end

puts odd_product([3, 4, 1, 1, 5]) == 15
puts odd_product([5, 5, 8, 2, 4, 32]) == 25
puts odd_product([1, 2, 1, 2, 1, 2, 1, 2]) == 1
puts odd_product([0, 0, 0, 1]) == 1
puts odd_product([1, 2, 2, 5, 2, 0]) == 5