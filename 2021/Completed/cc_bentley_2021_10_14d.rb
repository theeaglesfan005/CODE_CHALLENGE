# Hard - Legendre's Formula
# Legendre's formula finds the exponent of the largest power of some
# prime p that divides (is a factor of) the factorial of some number n.

def legendre(p, n)
  result = 0

  while n > 0
    n /= p
    result += n
  end
  result
end

puts legendre(5, 100) == 24
puts legendre(2, 128) == 127
puts legendre(3, 50) == 22
puts legendre(7, 98) == 16
puts legendre(11, 500) == 49
puts legendre(3, 600) == 297
puts legendre(7, 6) == 0
puts legendre(3, 1385) == 688
puts legendre(5, 4324) == 1077
puts legendre(2, 8663) == 8655