# Medium - Is This a Right Angled Triangle
#
# Given three numbers, x, y and z, determine whether they are the edges of a right angled triangle.
#
# Examples
# 	- right_triangle(3, 4, 5) ➞ true
# 	# This is the classic example of a "nice" right angled triangle.
#
# 	- right_triangle(145, 105, 100) ➞ true
# 	# This is a less famous example.
#
# 	- right_triangle(70, 130, 110) ➞ false
# 	# This isn't a right angled triangle.
#
# Notes
# 	- Notice the largest side of the triangle might not be the last one passed to the function.
# 	- All numbers will be integers (whole numbers).

def right_triangle(x, y, z)
  x, y, z = [x, y, z].sort
  [x, y, z].any? { |s| s < 1 } ? false : z == Math.sqrt((x**2) + (y**2))
end

puts right_triangle(3, 4, 5) == true
puts right_triangle(145, 105, 100) == true
puts right_triangle(70, 130, 110) == false
puts right_triangle(60, 60, 60) == false
puts right_triangle(0, 4, 4) == false
puts right_triangle(-3, 4, 5) == false
puts right_triangle(115, 277, 252) == true
puts right_triangle(140, 170, 220) == false
puts right_triangle(915, 1748, 1973) == true
