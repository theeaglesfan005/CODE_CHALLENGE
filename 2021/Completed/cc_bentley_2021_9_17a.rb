# Return the First Element in an Array - Very Easy
# Create a function that takes an array containing only numbers and return the
# first element.
#   Examples
# get_first_value([1, 2, 3]) ➞ 1
# get_first_value([80, 5, 100]) ➞ 80
# get_first_value([-500, 0, 50]) ➞ -500
# Notes
# The first element in an array always has an index of 0.

def get_first_value(arr)
  arr[0]
end

puts get_first_value([1, 2, 3]) == 1
puts get_first_value([80, 5, 100]) == 80
puts get_first_value([-500, 0, 50]) == -500
puts get_first_value([5, 2, 3]) == 5
puts get_first_value([75675, 5, 100]) == 75675
puts get_first_value([-52320, 0, 50]) == -52320