# Very Hard - Identity Matrix
# An identity matrix is defined as a square matrix with 1s running from the top
# left of the square to the bottom right. The rest are 0s. The identity matrix has
# applications ranging from machine learning to the general theory of relativity.
#   Create a function that takes an integer n and returns the identity matrix of n x n dimensions. For this challenge, if the integer is negative, return the mirror
# image of the identity matrix of n x n dimensions.. It does not matter if the
# mirror image is left-right or top-bottom.
#   Examples
# id_mtrx(2) ➞ [[1, 0], [0, 1]]
# id_mtrx(-2) ➞ [[0, 1], [1, 0]]
# id_mtrx(0) ➞ []
# Notes
# Incompatible types passed as n should return the string "Error".
require "matrix"

# def id_mtrx(n)
#   n.is_a?(Integer) ? Array.new(n.abs()){|i| Array.new(n.abs()){|j| i==j ? 1 : 0}} : 'Error'
# end

def id_mtrx(n)
  if n.is_a?(Integer)
    if n.positive?
      Array.new(n){|i| Array.new(n){|j| i==j ? 1 : 0}}
    else
      Array.new(n.abs()){|i| Array.new(n.abs()){|j| i==j ? 1 : 0}}.reverse()
    end
  else
    'Error'
  end
end

puts id_mtrx(1) == [[1]]
puts id_mtrx(2) == [[1, 0], [0, 1]]
puts id_mtrx(3) == [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
puts id_mtrx(4) == [[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]]
puts id_mtrx(-6) == [[0, 0, 0, 0, 0, 1], [0, 0, 0, 0, 1, 0], [0, 0, 0, 1, 0, 0], [0, 0, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 0, 0, 0, 0, 0]]
puts id_mtrx(-2) == [[0, 1], [1, 0]]
puts id_mtrx(0) == []
puts id_mtrx("edabit") == "Error"
puts id_mtrx(nil) == "Error"
puts id_mtrx([]) == "Error"