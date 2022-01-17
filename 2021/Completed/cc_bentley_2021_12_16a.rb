# Very Easy - Check if an Integer is Divisible By Five
# Create a function that returns true if an integer is evenly divisible by 5,
# and false otherwise.
# Examples
# divisible_by_five(5) ➞ true
# divisible_by_five(-55) ➞ true
# divisible_by_five(37) ➞ false

def divisible_by_five(n)
  n % 5 == 0
end

puts divisible_by_five(7) == false
puts divisible_by_five(5) == true
puts divisible_by_five(15) == true
puts divisible_by_five(33) == false
puts divisible_by_five(-18) == false
puts divisible_by_five(999) == false
puts divisible_by_five(2) == false