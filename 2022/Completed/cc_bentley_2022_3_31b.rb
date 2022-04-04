# Medium - Friday the 13th
# Given the month and year as numbers, return whether that month contains a Friday 13th.
#
# Examples
# has_friday_13(3, 2020) ➞ true
# has_friday_13(10, 2017) ➞ true
# has_friday_13(1, 1985) ➞ false

# Notes
# January will be given as 1, February as 2, etc ...

require 'date'
def has_friday_13(month, year)
  Date.new(year, month, 13).friday?
end

puts has_friday_13(3, 2020) == true
puts has_friday_13(10, 2017) == true
puts has_friday_13(1, 1985) == false
puts has_friday_13(5, 1619) == false
puts has_friday_13(6, 1614) == true
puts has_friday_13(8, 1767) == false
puts has_friday_13(6, 1589) == false
puts has_friday_13(2, 2015) == true
puts has_friday_13(3, 2015) == true
puts has_friday_13(11, 2015) == true
puts has_friday_13(2, 1759) == false
puts has_friday_13(8, 1612) == false
puts has_friday_13(8, 1612) == false
puts has_friday_13(10, 2029) == false
puts has_friday_13(1, 1590) == false
puts has_friday_13(7, 1812) == false
puts has_friday_13(1, 1785) == false
puts has_friday_13(11, 1961) == false
puts has_friday_13(9, 1706) == false
puts has_friday_13(5, 2016) == true
puts has_friday_13(11, 2020) == true
puts has_friday_13(1, 2023) == true
puts has_friday_13(10, 2023) == true
puts has_friday_13(2, 2043) == true
puts has_friday_13(4, 2043) == false
puts has_friday_13(3, 2043) == true
puts has_friday_13(11, 2043) == true