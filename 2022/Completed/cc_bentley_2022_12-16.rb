# Very Hard - KixCodes in the Netherlands
#
# In The Netherlands we have PostNL, the postal company.
# They use KixCodes, a fast way to deliver letters and packages that can be scanned during the process.
#
# Kix Code
#
# The code is a combination of: "Postal code", "House/box/call number" and "House appendage / suffix"
#
# If there is a character between the house number and the suffix, we need to replace that with an X.
# Eventually, the code will be printed in the KixCode font.
#
# Examples
# 	- kix_code("PostNL, Postbus 30250, 2500 GG 's Gravenhage") ➞ "2500GG30250"
# 	- kix_code("Liesanne B Wilkens, Kogge 11-1, 1657 KA Abbekerk") ➞ "1657KA11X1"
# 	- kix_code("Dijk, Antwoordnummer 80430, 2130 VA Hoofddorp") ➞ "2130VA80430"
#
# Notes
# 	- Your function will get an address line (string) separated by comma's.
# 	- The input format will always be the same.
# 	- Watch out for the different suffixes!

def kix_code(addr)
  house_ary = addr.split(',').collect(&:strip)
  post_ary = addr.split(',').collect(&:strip)[1].to_s.split(' ')

  if post_ary.size == 3
    post_ary.shift
    postal_code = post_ary.join('X')
  else
    post_edit = post_ary.last.split %r{' '|/|-}
    postal_code = post_edit.join('X')
  end

  house_number = house_ary[2].to_s[0, 7]
  (house_number + postal_code).gsub(/\s+/, '').upcase

end

puts kix_code("PostNL, Postbus 30250, 2500 GG 's Gravenhage") == '2500GG30250'
puts kix_code('De Jong, Havendijk 13 hs, 1231 FZ POSTDAM') == '1231FZ13XHS'
puts kix_code('B. Bartelds, Boerheem 46, 9421 MC Bovensmilde') == '9421MC46'
puts kix_code('Huisman, Koninginneweg 182 B, 3331 CH Zwijndrecht') == '3331CH182XB'
puts kix_code('Liesanne B Wilkens, Kogge 11-1, 1657 KA Abbekerk') == '1657KA11X1'
puts kix_code('Dijk, Antwoordnummer 80430, 2130 VA Hoofddorp') == '2130VA80430'
puts kix_code('Van Eert, Dirk van Heinsbergstraat 200-A, 5575 BM Luyksgestel') == '5575BM200XA'
puts kix_code('B.C. Dieker, Korhoenlaan 130b, 3847 LN Harderwijk') == '3847LN130B'
puts kix_code('Mahir F Schipperen, IJsselmeerlaan 31, 8304 DE Emmeloord') == '8304DE31'
puts kix_code('Jet de Wit, Wielingenstraat 129/7, 3522 PG Utrecht') == '3522PG129X7'