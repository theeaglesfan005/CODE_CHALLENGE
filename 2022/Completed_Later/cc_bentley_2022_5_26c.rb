# Medium - Rearrange the Number
#
# Given a number, return the difference between the maximum and minimum numbers that can be formed when the digits are rearranged.
#
# Examples
#
# rearranged_difference(972882) ➞ 760833
# 988722 - 227889 = 760833
#
# rearranged_difference(3320707) ➞ 7709823
# 7733200 - 23377 = 7709823
#
# rearranged_difference(90010) ➞ 90981
# 91000 - 19 = 90981

def rearranged_difference(num)
  num.to_s.split('').sort!.reverse.join('').to_i - num.to_s.split('').sort!.join('').to_i
end

puts rearranged_difference(9092564) == 9719721
puts rearranged_difference(1308821) == 8719722
puts rearranged_difference(8386568) == 5319765
puts rearranged_difference(7794084) == 9429651
puts rearranged_difference(6366093) == 9329661
puts rearranged_difference(7863060) == 8729622
puts rearranged_difference(3368327) == 6429654
puts rearranged_difference(7218787) == 7599933
puts rearranged_difference(7723188) == 7639533
puts rearranged_difference(8816317) == 7739523
puts rearranged_difference(8824349) == 7539543
puts rearranged_difference(3320707) == 7709823
puts rearranged_difference(1695488) == 8429652
puts rearranged_difference(2120034) == 4309866
puts rearranged_difference(5300586) == 8619732
puts rearranged_difference(3538814) == 7519743
puts rearranged_difference(1336939) == 8629632
puts rearranged_difference(6290200) == 9619731
puts rearranged_difference(5268866) == 6299964
puts rearranged_difference(5155458) == 7099983