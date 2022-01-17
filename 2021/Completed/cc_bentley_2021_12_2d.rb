# Hard - Diagonal of a Cube
# Create a function that takes the volume of a cube and returns the length of the
# cube's main diagonal, rounded to two decimal places.
# Examples
# cube_diagonal(8) ➞ 3.46
# cube_diagonal(343) ➞ 12.12
# cube_diagonal(1157.625) ➞ 18.19

def cube_diagonal(volume)
  (volume**(1.0 / 3.0) * (Math.sqrt(3))).round(2)
end

puts cube_diagonal(8) == 3.46
puts cube_diagonal(343) == 12.12
puts cube_diagonal(1157.625) == 18.19
puts cube_diagonal(12) == 3.97
puts cube_diagonal(1) == 1.73
puts cube_diagonal(48) == 6.29
puts cube_diagonal(1728) == 20.78