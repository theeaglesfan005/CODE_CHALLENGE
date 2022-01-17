# Very Easy - Are the Numbers Equal?
# Create a function that returns true when num1 is equal to num2; otherwise
# return false.
# Examples
# is_same_num(4, 8) ➞ false
# is_same_num(2, 2) ➞ true
# is_same_num(2, "2") ➞ false

def is_same_num(num1, num2)
  num1 == num2
end

puts is_same_num(4, 8) == false
puts is_same_num(2, 2) == true
puts is_same_num(0, 6) == false
puts is_same_num(2, "2") == false