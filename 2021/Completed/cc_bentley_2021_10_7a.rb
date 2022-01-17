# Very Easy - Is the Number Less than or Equal to
# Zero?
# Create a function that takes a number as its only argument and returns true if it's less than or equal to zero, otherwise return false.
# Examples
# less_than_or_equal_to_zero(5) ➞ false
# less_than_or_equal_to_zero(0) ➞ true
# less_than_or_equal_to_zero(-2) ➞ true


def less_than_or_equal_to_zero(num)
  num <= 0
end

puts less_than_or_equal_to_zero(5) == false
puts less_than_or_equal_to_zero(0) == true
puts less_than_or_equal_to_zero(-5) == true