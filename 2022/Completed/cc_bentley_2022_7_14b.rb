# Medium - Squares and Cubes
# Create a function that takes a list of two numbers and checks if the square root of the first number is equal to the cube root of the second number.
#
# Examples
# - check_square_and_cube([4, 8]) ➞ true
# - check_square_and_cube([16, 48]) ➞ false
# - check_square_and_cube([9, 27]) ➞ true
#
# Notes
# - Remember to return either true or false.
# - All lists contain two positive numbers.

def check_square_and_cube(lst)
  Math.sqrt(lst[0]) == Math.cbrt(lst[1])
end

puts check_square_and_cube([4, 8]) == true
puts check_square_and_cube([5, 12]) == false
puts check_square_and_cube([9, 27]) == true
puts check_square_and_cube([25, 120]) == false
puts check_square_and_cube([25, 125]) == true
puts check_square_and_cube([36, 215]) == false
puts check_square_and_cube([36, 217]) == false
puts check_square_and_cube([144, 1728]) == true
puts check_square_and_cube([1, 1]) == true
puts check_square_and_cube([676, 17576]) == true
