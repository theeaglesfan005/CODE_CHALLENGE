# Create a function that takes an integer array and return the biggest between positive sum, negative sum, or 0s count.
# The major is understood as the greatest absolute.
#
# l = [1,2,3,4,0,0,-3,-2], the function has to return 10, because:
# •	Positive sum = 1+2+3+4 = 10
# •	Negative sum = (-3)+(-2) = -5
# •	0s count = 2 (there are two zeros in array)
#
# Examples
# major_sum([1, 2, 3, 4, 0, 0, -3, -2]) ➞ 10
# major_sum([-4, -8, -12, -3, 4, 7, 1, 3, 0, 0, 0, 0]) ➞ -27
# major_sum([0, 0, 0, 0, 0, 1, 2, -3]) ➞ 5
# # Because -3 < 1+2 < 0sCount = 5
#
# Notes
# •	All numbers are integers.
# •	There aren't empty arrays.
# •	All tests are made to return only one value.

def major_sum(arr)
a= []
b = []
sum_total = 0
neg_sum = 0
zero_count = 0

arr.each { |num|
  if num.positive?
    sum_total += num
  elsif num.negative?
    neg_sum += num
  else
    zero_count += 1
  end
}

a << sum_total << neg_sum << zero_count
a.each { |e| b << e.dup.abs }
a[b.rindex(b.max)]
end

puts major_sum([1, 2, 3, 4, 0, 0, -3, -2]) == 10
puts major_sum([-4, -8, -12, -3, 4, 7, 1, 3, 0, 0, 0, 0]) == -27
puts major_sum([0, 0, 0, 0, 0, 1, 2, -3]) == 5
puts major_sum([0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]) == 11
puts major_sum([0]) ==  1
puts major_sum([1]) == 1
puts major_sum([-1]) == -1
puts major_sum([10, -12, 4, 0, -3, -7, -91, 45]) == -113
puts major_sum([0, 1, 0, 1, 0, 1, 0, 1, 0]) == 5
puts major_sum([-1, -1, -1, -1, -1, 1, 1, 1, 1, 0, 0, 0, 0]) == -5
puts major_sum([1, 2, 3, 4, -5, -4, -3, -2, -1, 0]) == -15
puts major_sum([0, 1, -2]) == -2
puts major_sum([2, 0, -1]) == 2
puts major_sum([2, 0, 0, 0, -1]) == 3
puts major_sum([2, 0, 0, 0, 0, -1]) == 4