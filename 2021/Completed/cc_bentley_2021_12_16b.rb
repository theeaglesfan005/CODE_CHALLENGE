# Easy - Sum of the Odd Numbers
# Create a function which returns the total of all odd numbers up to and
# including n. n will be given as an odd number.
# Examples
# add_odd_to_n(5) ➞ 9
# 1 + 3 + 5 = 9
# add_odd_to_n(13) ➞ 49
# add_odd_to_n(47) ➞ 576
# Notes
# Curiously, the answers are all square numbers!

def add_odd_to_n(n)
  sum = 0
  i=1
  while i<=n
    if i.odd?
      sum = sum+i
      i=i+1
    else
      i=i+1
    end
  end

  sum
end

puts add_odd_to_n(1) == 1
puts add_odd_to_n(3) == 4
puts add_odd_to_n(5) == 9
puts add_odd_to_n(7) == 16
puts add_odd_to_n(9) == 25
puts add_odd_to_n(11) == 36
puts add_odd_to_n(13) == 49
puts add_odd_to_n(15) == 64
puts add_odd_to_n(17) == 81
puts add_odd_to_n(19) == 100
puts add_odd_to_n(21) == 121
puts add_odd_to_n(23) == 144
puts add_odd_to_n(25) == 169
puts add_odd_to_n(27) == 196
puts add_odd_to_n(29) == 225
puts add_odd_to_n(31) == 256
puts add_odd_to_n(33) == 289
puts add_odd_to_n(35) == 324
puts add_odd_to_n(37) == 361
puts add_odd_to_n(39) == 400
puts add_odd_to_n(41) == 441
puts add_odd_to_n(43) == 484
puts add_odd_to_n(45) == 529