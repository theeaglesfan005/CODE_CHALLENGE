# Medium - Positive Count / Negative Sum
#
# 	Create a function that takes an array of positive and negative numbers. Return an array where the first element is the count of positive numbers and the second element is the sum of negative numbers.
#
# Examples
#
# 	sum_neg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) ➞ [10, -65]
# 	// There are a total of 10 positive numbers.
# 	// The sum of all negative numbers equals -65.
# 	sum_neg([92, 6, 73, -77, 81, -90, 99, 8, -85, 34]) ➞ [7, -252]
# 	sum_neg([91, -4, 80, -73, -28]) ➞ [2, -105]
# 	sum_neg([]) ➞ []
#
# Notes
#
# 	If given an empty array, return an empty array: []
# 	0 is not positive.

def sum_neg(arr)
  ary =[]
  unless arr.empty?
    ary = [arr.select(&:positive?).count, arr.select(&:negative?).sum]
  end

  ary
end

puts sum_neg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) == [10, -65]
puts sum_neg([92, 6, 73, -77, 81, -90, 99, 8, -85, 34]) == [7, -252]
puts sum_neg([91, -4, 80, -73, -28]) == [2, -105]
puts sum_neg([]) == []
puts sum_neg([69, 100, 28, 47, 53, -61, -24]) == [5, -85]
puts sum_neg([5, 7, 9, -3, -7, 61, -24]) == [4, -34]
puts sum_neg([98, 51, -19, -97]) == [2, -116]
puts sum_neg([-42, 3, -51, -64, 69, 77, -20, -5, 68, -76]) == [4, -258]