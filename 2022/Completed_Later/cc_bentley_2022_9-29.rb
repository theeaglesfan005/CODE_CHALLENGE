# Expert - Aluminum Foil
#
# Aluminum foil has a thickness of 0.025mm.
# A roll is formed by tightly winding it around a tube with an outside diameter of 4cm.
# Given the length of the foil in cm, write a function that returns the diameter of the roll in cm measured at its
# thickest point. Round the result to four places.
#
# Examples
#
# 	foil(0) ➞ 4.0
# 	foil(50) ➞ 4.02
# 	foil(4321) ➞ 5.4575
# 	foil(10000) ➞ 6.9175

def foil(length)
  ft_len = length / 30.48
  ft_core = 4.0 / 30.48
  ft_thick = 0.025 / 30.48

  len = ft_len * 12

  Math.sqrt(len * (ft_thick / Math::PI) + ((ft_core / 2)**2)) * 30.48
end

puts foil(0)
puts foil(6)
puts foil(7)
puts foil(12)
puts foil(13)
puts foil(1000)
puts foil(7777)
puts foil(123456)

# put s foil(0) == 4.0
# puts foil(6) == 4.0025
# puts foil(7) == 4.005
# puts foil(12) == 4.005
# puts foil(13) == 4.0075
# puts foil(1000) == 4.3825
# puts foil(7777) == 6.385
# puts foil(123456) == 20.2275
#