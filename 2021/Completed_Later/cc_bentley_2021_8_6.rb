# Hole Number Sequence
#
# What do the digits 0, 4, 6, 8, and 9 have in common? Well, they are whole numbers... and they are also hole numbers (not actually a thing until now).
# Hole numbers are numbers with holes in their shapes (8 is special in that it contains two holes).
#
# 14 is a hole number with one hole. 88 is a hole number with four holes.
#
# Your task is to create a function with argument num that returns the sum of the holes for the integers n in the range of range 0 < n <= num.
#
# To illustrate, sum_of_holes(14) returns 7, because there are 7 holes in 4, 6, 8, 9, 10 and 14.
#
# Examples
#   •	sum_of_holes(4) ➞ 1
#   •	sum_of_holes(6) ➞ 2
#   •	sum_of_holes(8) ➞ 4
#   •	sum_of_holes(6259) ➞ 12345
#
# Notes
#   •	All test cases are positive real integers.
#   •	Don't forget that 8 has two holes.

def sum_of_holes(num)
  holes = 0
  hole_counts = [1, 0, 0, 0, 1, 0, 1, 0, 2, 1]
  range = (1..num).to_a.join.split('').map(&:to_i)

  range.each do |digit|
    holes += hole_counts[digit]
  end

  holes
end

puts sum_of_holes(1) == 0
puts sum_of_holes(4) == 1
puts sum_of_holes(6) == 2
puts sum_of_holes(8) == 4
puts sum_of_holes(9) == 5
puts sum_of_holes(10) == 6
puts sum_of_holes(88) == 90
puts sum_of_holes(10000) == 22893
puts sum_of_holes(12345) == 27991
