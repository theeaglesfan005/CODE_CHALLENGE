# Very Easy - Find the Perimeter of a Rectangle
# Create a function that takes length and width and finds the perimeter of a
# rectangle.
# Examples
# find_perimeter(6, 7) ➞ 26
# find_perimeter(20, 10) ➞ 60
# find_perimeter(2, 9) ➞ 22

def find_perimeter(length, width)
  2*(length+width)
end

puts find_perimeter(6, 7) == 26
puts find_perimeter(20, 10) == 60
puts find_perimeter(2, 9) == 22