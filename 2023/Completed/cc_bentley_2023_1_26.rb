# Perimeters with a Catch
#
# Write a function that takes a number and returns the perimeter of either a circle or a square.
# The input will be in the form (letter l, number num) where the letter will be either "s" for square,
# or "c" for circle, and the number will be the side of the square or the radius of the circle.
#
# Use the following formulas:
# 	- Perimeter of a square: 4 * side.
# 	- Perimeter of a circle: 6.28 * radius.
# 	- The catch is you can only use arithmetic or comparison operators, which means:
# 		- No if... else statements.
# 		- No dictionaries.
# 		- No lambdas.
# 		- No formatting methods, etc.
#
# The goal is to write a short, branch-free piece of code.
#
# Examples
# 	- perimeter("s", 7) ➞ 28
# 	- perimeter("c", 4) ➞ 25.12
# 	- perimeter("c", 9) ➞ 56.52
#
# Notes
# - No rounding is needed.
# - Hint: The Boolean true, used with arithmetic operators, counts as 1, while false counts as 0.
# That means (a>b)+1 will return 1 or 2, depending on the values of a and b.

def perimeter(l, num)
  perimeter = l.eql? "s"
  perimeter = perimeter && 4 || 6.28

  perimeter * num
end

puts perimeter("s", 1) == 4
puts perimeter("s", 4) == 16
puts perimeter("s", 9) == 36
puts perimeter("s", 13) == 52
puts perimeter("s", 30) == 120
puts perimeter("c", 1) == 6.28
puts perimeter("c", 4) == 25.12
puts perimeter("c", 9) == 56.52
puts perimeter("c", 13) == 81.64
puts perimeter("c", 30) == 188.4
