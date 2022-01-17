# Hard - LCM of Two Numbers
# Write a function that returns the least common multiple (LCM) of two integers.
# Examples
# lcm(9, 18) ➞ 18
# lcm(8, 5) ➞ 40
# lcm(17, 11) ➞ 187
# Notes
# Both values will be positive.
# The LCM is the smallest integer that is divisible by both numbers such
# that the remainder is zero.

def lcm(n1, n2)
  n1.lcm(n2)
end

puts lcm(9, 18) == 18
puts lcm(8, 5) == 40
puts lcm(17, 11) == 187
puts lcm(17, 5) == 85
puts lcm(3, 12) == 12
puts lcm(9, 9) == 9