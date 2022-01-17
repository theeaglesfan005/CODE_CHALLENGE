# Easy - Unlucky 13
# Given a sorted array of numbers, remove any numbers that are divisible by 13.
# Return the amended array.
# Examples
# unlucky_13([53, 182, 435, 591, 637]) ➞ [53, 435, 591]
# 182 and 637 are divisible by 13.
# unlucky_13([24, 316, 393, 458, 1279]) ➞ [24, 316, 393, 458, 1279]
# No numbers in the array are divisible by 13.
# unlucky_13([104, 351, 455, 806, 871]) ➞ []
# All numbers in the array are divisible by 13.

def unlucky_13(nums)
  nums.reject{ |a| (a % 13).zero? }
end

puts unlucky_13([91, 286, 416, 884, 1229]) == [1229]
puts unlucky_13([245, 518, 741, 824, 1092]) == [245, 518, 824]
puts unlucky_13([394, 447, 572, 832, 1105]) == [394, 447]
puts unlucky_13([289, 406, 650, 791, 1079]) == [289, 406, 791]
puts unlucky_13([390, 438, 1014, 1067, 1091]) == [438, 1067, 1091]
puts unlucky_13([494, 1041, 1158, 1188, 1298]) == [1041, 1158, 1188, 1298]
puts unlucky_13([43, 117, 169, 702, 1048]) == [43, 1048]
puts unlucky_13([195, 430, 845, 857, 874]) == [430, 857, 874]
puts unlucky_13([247, 510, 1144, 1164, 1206]) == [510, 1164, 1206]
puts unlucky_13([182, 520, 533, 923, 1196]) == []
puts unlucky_13([52, 144, 148, 1105, 1114]) == [144, 148, 1114]
puts unlucky_13([130, 204, 364, 585, 679]) == [204, 679]
puts unlucky_13([23, 309, 949, 975, 1235]) == [23, 309]
puts unlucky_13([804, 910, 1069, 1190, 1249]) == [804, 1069, 1190, 1249]
puts unlucky_13([21, 78, 611, 652, 1036]) == [21, 652, 1036]
puts unlucky_13([32, 107, 481, 891, 1131]) == [32, 107, 891]
puts unlucky_13([260, 389, 420, 1035, 1086]) == [389, 420, 1035, 1086]
puts unlucky_13([251, 416, 508, 630, 1235]) == [251, 508, 630]
puts unlucky_13([213, 592, 1130, 1172, 1281]) == [213, 592, 1130, 1172, 1281]
puts unlucky_13([25, 136, 312, 632, 1193]) == [25, 136, 632, 1193]