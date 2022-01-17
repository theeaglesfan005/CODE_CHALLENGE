# Hard - Break Point
# A number has a breakpoint if it can be split in a way where the digits on the left
# side and the digits on the right side sum to the same number.
# For instance, the number 35190 can be sliced between the digits 351 and 90,
# since 3 + 5 + 1 = 9 and 9 + 0 = 9. On the other hand, the
# number 555 does not have a breakpoint (you must split between digits).
# Create a function that returns true if a number has a breakpoint,
# and false otherwise.
# Examples
# break_point(159780) ➞ true
# break_point(112) ➞ true
# break_point(1034) ➞ true
# break_point(10) ➞ false
# break_point(343) ➞ false
# Notes
# Read each digit as only one number.

def break_point(num)

  num_arr = num.to_s.split("").map(&:to_i)
  num_size = num_arr.size

  sum = 0
  aux = 0
  break_point = -1

  i = 0
  while i < num_size
    sum += num_arr[i]
    i += 1
  end

  i = 0
  while i < num_size && break_point == -1
    aux += num_arr[i]
    sum = sum - num_arr[i]

    if aux == sum
      break_point = i + 1
    end

    i += 1
  end

  aux == sum
end

puts break_point(159780) == true
puts break_point(112) == true
puts break_point(10) == false
puts break_point(1034) == true
puts break_point(343) == false
puts break_point(1119444) == true
puts break_point(6666) == true
puts break_point(9777771) == false