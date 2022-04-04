# Easy - Maximum Possible Total
#
# Given an array of 10 numbers, return the maximum possible total made by summing just 5 of the 10 numbers.
#
# Examples
# max_total([1, 1, 0, 1, 3, 10, 10, 10, 10, 1]) ➞ 43
# max_total([0, 0, 0, 0, 0, 0, 0, 0, 0, 100]) ➞ 100
# max_total([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) ➞ 40
#
# Notes
# You can select any 5 numbers from the given array to form maximum possible total.
#
#
def max_total(nums)
  nums.sort.drop(5).inject(0, :+)
end

puts max_total([1, 1, 0, 1, 3, 10, 10, 10, 10, 1]) == 43
puts max_total([0, 0, 0, 0, 0, 0, 0, 0, 0, 100]) == 100
puts max_total([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == 40
puts max_total([12, 8, 73, 1, 24, 11, 88, 39, 2, -47]) == 236
puts max_total([48, 90, 42, -12, 1, -14, -36, -37, -9, -4]) == 177
puts max_total([-99, -38, -13, -84, 66, 13, -13, -16, 14, 15]) == 95
puts max_total([60, -70, -53, -4, 53, -66, 10, -7, 56, 89]) == 268
puts max_total([88, 45, 76, 34, -42, 10, -22, 85, -52, 49]) == 343
puts max_total([70, -74, 20, -56, -15, 93, -75, 98, 46, 36]) == 343
puts max_total([-20, -61, 50, 52, 60, -70, 0, 69, 91, -36]) == 322
puts max_total([31, 75, 78, 76, -51, -8, 17, -23, 34, 100]) == 363
puts max_total([-79, 85, 55, -5, -86, -72, 31, -68, 13, 1]) == 185
puts max_total([-93, -79, -26, 53, 74, -55, 68, -36, -6, -94]) == 163
puts max_total([-100, 21, 22, 65, 19, 2, -11, 3, 24, 73]) == 205
puts max_total([92, -43, 80, 43, 23, -41, -19, 90, 78, 31]) == 383
puts max_total([-71, -11, -89, 60, 71, -62, 54, 11, 73, 49]) == 307
puts max_total([61, -55, 60, -30, 27, 61, -68, -1, -36, -27]) == 208