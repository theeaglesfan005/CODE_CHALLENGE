# Very Hard - Maxie and Minnie
#
# Maxie is the largest number that can be obtained by ***swapping two digits***, Minnie is the smallest.
# Write a function that takes a number and returns Maxie and Minnie. Leading zeros are not permitted.
#
# Examples
# 	- maxmin(12340) ➞ [42310, 10342]
# 	- maxmin(98761) ➞ [98761, 18769]
# 	- maxmin(9000) ➞ [9000, 9000]
# 		- Sometimes no swap needed.
# 	- maxmin(11321) ➞ [31121, 11123]



def maxmin(n)

  def copy_array(arr)
    ans = []
    arr.each { |a| ans << a }
    ans
  end

  digits = n.to_s.split('').map(&:to_i)
  len = digits.size
  minie = n
  maxie = n

  (0..len - 1).each do |i|
    (i + 1..len - 1).each do |j|
      d1 = digits[i]
      d2 = digits[j]
      num = copy_array(digits)
      num[i] = d2
      num[j] = d1
      next unless num[0] != 0

      k = num.join('').to_i
      minie = [minie, k].min
      maxie = [maxie, k].max
    end
  end

  [maxie, minie]

end

puts maxmin(9876543210) == [9876543210, 1876543290]
puts maxmin(1234567890) == [9234567810, 1034567892]
puts maxmin(190015878798001) == [990015878718001, 100015878798091]
puts maxmin(411347917692022) == [911347917642022, 111347947692022]
puts maxmin(91620336331950) == [99620336331150, 11620336339950]
puts maxmin(428256072523076) == [824256072523076, 228256072543076]
puts maxmin(999607251369567) == [999907251366567, 199607259369567]
puts maxmin(10936404093733) == [90936404013733, 10036404993733]
puts maxmin(116962727585478) == [916162727585478, 112962767585478]
puts maxmin(645440811595719) == [945440811595716, 145440811595769]
puts maxmin(304732653285373) == [804732653235373, 204732653385373]
puts maxmin(734694929081563) == [934694927081563, 134694929087563]
puts maxmin(597202395684464) == [997202355684464, 297205395684464]
puts maxmin(111090753368874) == [911010753368874, 101091753368874]
puts maxmin(357758017083851) == [857758017083351, 157758017083853]
puts maxmin(744888865698909) == [944888865698907, 447888865698909]
puts maxmin(589067130451808) == [985067130451808, 189067130455808]
puts maxmin(236077600527389) == [936077600527382, 206077603527389]
puts maxmin(405272406161141) == [705242406161141, 105272406161144]
puts maxmin(21460234556134) == [61460234552134, 11460234556234]
puts maxmin(347435942637955) == [947435942637355, 247435943637955]
puts maxmin(942631615759140) == [992631615754140, 142631615759940]
