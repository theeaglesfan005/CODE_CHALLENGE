# Chocolate Dilemma
# Two sisters are eating chocolate, whose pieces are represented as subarrays of [l x w]
# Write a function that returns true if the total area of the chocolate is the same for each sister.
#
# To Illustrate:
# test_fairness([[4, 3], [2, 4], [1, 2]],
# [[6, 2], [4, 2], [1, 1], [1, 1]])
# -> true
#
# // Agatha's pieces: [4, 3], [2, 4], [1, 2]
# // Bertha's pieces: [6, 2], [4, 2], [1, 1], [1, 1]
#
# // Total area of Agatha's chocolate
# // 4x3 + 2x4 + 1x2 = 12 + 8 + 2 = 22
#
# // Total area of Bertha's chocolate
# // 6x2 + 4x2 + 1x1 + 1x1 = 12 + 8 + 1 + 1 = 22
#
# Implement the following method so that the tests return true

def test_fairness(agatha, bertha)
  agathaArea = 0
  berthaArea = 0

  for agatha in agatha
    agathaArea += (agatha[0] * agatha[1])
  end

  for bertha in bertha
    berthaArea += (bertha[0] * bertha[1])
  end

  agathaArea == berthaArea
end

# tests
puts test_fairness([[1, 2], [2, 1]], [[2, 2]]) == true
puts test_fairness([[1, 2], [2, 1]], [[2, 2], [4, 4]]) == false
puts test_fairness([[2, 2], [2, 2], [2, 2], [2, 2]], [[4, 4]]) == true
puts test_fairness([[1, 5], [6, 3], [1, 1]], [[7, 1], [2, 2], [1, 1]]) == false