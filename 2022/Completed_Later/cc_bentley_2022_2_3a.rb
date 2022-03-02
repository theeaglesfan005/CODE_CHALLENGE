# Easy - Halve and Halve Again
# Given two integers a and b, return how many times a can be halved while still being greater than b.
# Examples
# halve_count(1324, 98) ➞ 3
# (1324 -> 662 -> 331 -> 165.5)
# halve_count(624, 8) ➞ 6
# (624 -> 312 -> 156 -> 78 -> 39 -> 19.5 -> 9.75)
# halve_count(1000, 3) ➞ 8
# (1000 -> 500 -> 250 -> 125 -> 62.5 -> 31.25 -> 15.625 -> 7.8125 ->
# 3.90625)
# Notes
# Integer a will always be able to be halved at least once in every test case.


def halve_count(a, b)
  af = a.to_f
  bf = b.to_f
  count_halve = 0

  while af > bf
    af /= 2
    if af > bf
      count_halve += 1
    end
  end

  count_halve
end

puts halve_count(1891, 4) == 8
puts halve_count(1756, 14) == 6
puts halve_count(7764, 2) == 11
puts halve_count(1118, 47) == 4
puts halve_count(161, 79) == 1
puts halve_count(8573, 35) == 7
puts halve_count(4123, 1) == 12
puts halve_count(1348, 60) == 4
puts halve_count(7549, 31) == 7
puts halve_count(4469, 5) == 9
puts halve_count(1123, 98) == 3
puts halve_count(8197, 85) == 6
puts halve_count(1199, 56) == 4
puts halve_count(8845, 4) == 11
puts halve_count(606, 67) == 3
puts halve_count(3375, 6) == 9
puts halve_count(7085, 10) == 9
puts halve_count(299, 5) == 5
puts halve_count(1208, 82) == 3
puts halve_count(3635, 73) == 5
puts halve_count(2382, 3) == 9
puts halve_count(320, 80) == 1