# The Collatz Sequence - Hard
# The Collatz sequence is as follows:
# Start with some given integer n.
# If it is even, the next number will be n divided by 2.
# If it is odd, multiply it by 3 and add 1 to make the next number.
# The sequence stops when it reaches 1.
# According to the Collatz conjecture, it will always reach 1. If that's true, you can construct a finite sequence following the aforementioned method for any given integer.
# Write a function that takes in an integer n and returns the highest integer in the corresponding Collatz sequence.
# Examples
# max_collatz(10) ➞ 16
# Collatz sequence: 10, 5, 16, 8, 4, 2, 1
# max_collatz(32) ➞ 32
# Collatz sequence: 32, 16, 8, 4, 2, 1
# max_collatz(85) ➞ 256
# Collatz sequence: 85, 256, 128, 64, 32, 16, 8, 4, 2, 1
def get_collatz_next_number(num)
  if num.even?
    num / 2
  elsif num == 1 then
    return nil
  else
    (num * 3) + 1
  end
end

def max_collatz(num)
  collatz_ary = Array.new
  new_num = num
  collatz_ary.push new_num

  new_num = get_collatz_next_number(new_num)
  until new_num.nil? do
    collatz_ary.push new_num
    new_num = get_collatz_next_number(new_num)
  end
  collatz_ary.max
end

puts max_collatz(161) == 9232
puts max_collatz(23) == 160
puts max_collatz(48) == 48
puts max_collatz(1) == 1
puts max_collatz(70) == 160
puts max_collatz(908) == 1024
puts max_collatz(369) == 1108
puts max_collatz(3500) == 3940
puts max_collatz(33) == 100
puts max_collatz(715) == 3220