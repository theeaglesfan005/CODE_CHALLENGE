# Very Hard - Decrypt the String from Digits to Letters
#
# Given a string s consisting from digits and #, translate s to English lowercase characters as follows:
#
# Characters ("a" to "i") are represented by ("1" to "9").
# Characters ("j" to "z") are represented by ("10#" to "26#").
#
# Examples
# decrypt("10#11#12") ➞ "jkab"
# decrypt("1326#") ➞ "acz"
# decrypt("25#") ➞ "y"

def decrypt(s)

  a_i = { '1' => 'a', '2' => 'b', '3' => 'c', '4' => 'd', '5' => 'e', '6' => 'f', '7' => 'g', '8' => 'h', '9' => 'i' }

  j_z = { '10#' => 'j', '11#' => 'k', '12#' => 'l', '13#' => 'm', '14#' => 'n', '15#' => 'o', '16#' => 'p',
          '17#' => 'q', '18#' => 'r', '19#' => 's', '20#' => 't', '21#' => 'u', '22#' => 'v', '23#' => 'w',
          '24#' => 'x', '25#' => 'y', '26#' => 'z' }

  j_z.each do |key, value|
    s = s.gsub(key, value) if s.include? key
  end

  decrypted = s.split('')

  a_i.each do |key, value|
    decrypted[decrypted.index(key)] = value if decrypted.include? key
  end

  decrypted.join
end

puts decrypt("10#11#12") == "jkab"
puts decrypt("1326#") == "acz"
puts decrypt("25#") == "y"
puts decrypt("12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#") == "abcdefghijklmnopqrstuvwxyz"