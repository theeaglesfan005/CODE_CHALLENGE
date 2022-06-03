# Medium - Slidey Numbers
#
# A number is considered slidey if for every digit in the number, the next digit from that has an absolute difference of one. Check the examples below.
#
# Examples
# is_slidey(123454321) ➞ true
# is_slidey(54345) ➞ true
# is_slidey(987654321) ➞ true
# is_slidey(1123) ➞ false
# is_slidey(1357) ➞ false
#
# Notes
# A number cannot slide properly if there is a "flat surface" (example #4), or has gaps (example #5).
# All single digit numbers can be considered slidey numbers!

def is_slidey(n)

  n_ary = n.to_s.chars.map(&:to_i)
  slidey_false = 0

  n_ary.each_cons(2) do | first, second |
    if (second - first).abs != 1
      slidey_false = slidey_false + 1
    end
  end

  slidey_false.positive? ? false : true

end

puts is_slidey(123454321)
puts is_slidey(54345)
puts is_slidey(987654321)
puts !is_slidey(1123)
puts !is_slidey(1357)
puts is_slidey(1)
puts is_slidey(0)
puts !is_slidey(13578987)
puts is_slidey(232323232)
puts !is_slidey(2323232322)
puts is_slidey(2343456567878)
puts !is_slidey(999999999999)
puts !is_slidey(223322332233)
puts !is_slidey(7766554433)
puts is_slidey(32)
puts is_slidey(21)
puts !is_slidey(33)
puts !is_slidey(30)
