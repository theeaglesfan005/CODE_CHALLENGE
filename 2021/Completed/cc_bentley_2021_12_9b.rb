# Easy - Number to Reversed Array
# Create a function that takes a number and returns an array with the digits of the
# number in reverse order.
# Examples
# reverse_arr(1485979) ➞ [9, 7, 9, 5, 8, 4, 1]
# reverse_arr(623478) ➞ [8, 7, 4, 3, 2, 6]
# reverse_arr(12345) ➞ [5, 4, 3, 2, 1]

def reverse_arr(num)
  num.to_s.reverse.scan(/\d/).map {|i| i.to_i}
end

puts reverse_arr(1485979) == [9, 7, 9, 5, 8, 4, 1]
puts reverse_arr(623478) == [8, 7, 4, 3, 2, 6]
puts reverse_arr(12345) == [5, 4, 3, 2, 1]
puts reverse_arr(202069) == [9, 6, 0, 2, 0, 2]