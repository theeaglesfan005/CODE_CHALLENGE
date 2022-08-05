# Medium - Solve a Linear Equation
#
# Create a function that returns the value of x (the "unknown" in the equation). Each equation will be formatted like this:
# x + 6 = 12
#
# Examples
# solve("x + 43 = 50") ➞ 7
# solve("x - 9 = 10") ➞ 19
# solve("x + 300 = 100") ➞ -200
# Notes
# "x" will always be in the same place (you will not find an equation like 6 + x = 12).
# Every equation will include either subtraction (-) or addition (+).
# "x" may be negative.

def solve(eq)
  eq_ary = eq.split(' ')
  eq_ary[1] == '+' ? eq_ary[4].to_i - eq_ary[2].to_i : eq_ary[2].to_i + eq_ary[4].to_i
end

puts solve('x + 43 = 50') == 7
puts solve('x - 9 = 10') == 19
puts solve('x + 300 = 100') == -200
puts solve('x - 0 = 0') == 0
puts solve('x + 188 = 866') == 678
puts solve('x + -500 = -200') == 300
