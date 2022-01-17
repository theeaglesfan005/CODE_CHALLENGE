# Medium - What Type of Triangle?
# Create a function which returns the type of triangle, given the side lengths.
# Return the following values if they match the criteria.
# No sides equal: "scalene"
# Two sides equal: "isosceles"
# All sides equal: "equilateral"
# Less or more than 3 sides given: "not a triangle"
#
# Examples
# get_triangle_type([2, 6, 5]) ➞ "scalene"
# get_triangle_type([4, 4, 7]) ➞ "isosceles"
# get_triangle_type([8, 8, 8]) ➞ "equilateral"
# get_triangle_type([3, 5, 5, 2]) ➞ "not a triangle"
#
# Notes
# You will be given an array of positive integers.

def get_triangle_type(arr)

  if arr.length != 3
    'not a triangle'
  elsif arr[0] == arr[1] && arr[1] == arr[2]
    'equilateral'
  elsif arr[0] != arr[1] && arr[1] != arr[2] && arr[2] != arr[0]
    'scalene'
  else
    'isosceles'
  end

end

puts get_triangle_type([2, 3, 4]) == "scalene"
puts get_triangle_type([4, 4, 7]) == "isosceles"
puts get_triangle_type([8, 8, 8]) == "equilateral"
puts get_triangle_type([3, 5, 5, 2]) == "not a triangle"
puts get_triangle_type([4, 4, 1]) == "isosceles"
puts get_triangle_type([4, 4, 2]) == "isosceles"
puts get_triangle_type([3, 1, 3]) == "isosceles"
puts get_triangle_type([1]) == "not a triangle"
puts get_triangle_type([4, 4, 3]) == "isosceles"
puts get_triangle_type([10]) == "not a triangle"
puts get_triangle_type([4, 1, 4]) == "isosceles"
puts get_triangle_type([3, 3, 3]) == "equilateral"
puts get_triangle_type([2, 3, 4]) == "scalene"