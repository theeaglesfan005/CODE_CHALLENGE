# Very Easy - Area of a Triangle
# Write a function that takes the base and height of a triangle and return its area.
#   Examples
# tri_area(3, 2) ➞ 3
# tri_area(7, 4) ➞ 14
# tri_area(10, 10) ➞ 50
# Notes
# The area of a triangle is: (base * height) / 2
# Don't forget to return the result.

def tri_area(base, height)
  (base * height) / 2
end

puts tri_area(3, 2) == 3
puts tri_area(5, 4) == 10
puts tri_area(10, 10) == 50
puts tri_area(0, 60) == 0
puts tri_area(12, 11) == 66