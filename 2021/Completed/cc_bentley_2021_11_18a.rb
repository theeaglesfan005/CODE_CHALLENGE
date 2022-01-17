# Very Easy - Using the "&&" Operator
# Ruby has a logical operator &&, which can also be written as and. The && operator
# takes two boolean values, and returns true if both values are true.
# Consider a && b:
# a is checked if it is true or false.
# If a is false, false is returned.
# b is checked if it is true or false.
# If b is false, false is returned.
# Otherwise, true is returned (as both a and b are therefore true).
# The && operator will only return true for true && true.
# Make a function using the && operator.
# Examples
# new_and(true, false) ➞ false
# new_and(true, true) ➞ true
# new_and(false, true) ➞ false
# new_and(false, false) ➞ false

def new_and(a, b)
  a && b
end

puts new_and(true, true) == true
puts new_and(true, false) == false
puts new_and(false, true) == false
puts new_and(false, false) == false