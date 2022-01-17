# Easy - Regex Series: String Contains at Least One
# Digit
# Write a regular expression that matches a string if it contains at least one digit.
#   Examples
# has_digit("c8") ➞ true
# has_digit("23cc4") ➞ true
# has_digit("abwekz") ➞ false
# has_digit("sdfkxi") ➞ false
# Notes
# This challenge is designed to use RegEx only

def has_digit(txt)
  txt =~ /\d/ ? true : false
end

puts has_digit('c8') == true
puts has_digit('23cc4') == true
puts has_digit('abwekz') == false
puts has_digit('sdfkxi') == false
puts has_digit('rxizw') == false
puts has_digit('jren3biy') == true
puts has_digit('mxkbj3bg') == true
puts has_digit('qageha') == false
puts has_digit('qian5rtjzwgkjk') == true
puts has_digit('kyehbjosrx') == false
puts has_digit('cvlcg2ggggzowzas') == true
puts has_digit('jjbbvb7kjmypz') == true
puts has_digit('rfjgzn50djg') == true
puts has_digit('mvepzvqgumaihtoudh') == false
puts has_digit('kauhkwmd') == false
puts has_digit('s8fonjkblhu') == true
puts has_digit('krkccxwmmx3lcjbe') == true
puts has_digit('dirg') == false
puts has_digit('ntqdkskd6srln') == true
puts has_digit('tkabcvzfabqz') == false
puts has_digit('umqihuaikhzcaprtmrkf') == false
puts has_digit('nvvwhxt') == false
puts has_digit('r2clrks') == true
puts has_digit('mlzuwfusierivfrbq') == false
puts has_digit('mvggduqcr') == false
puts has_digit('sbxfntq4ekwf') == true
puts has_digit('ulylvolxuf5vofllvdjg') == true
puts has_digit('usa3ouizefs') == true
puts has_digit('hqmszb7somqcdnox') == true
puts has_digit('ftnnqspmdifi') == false
puts has_digit('fbgryiyzjirysz') == false
puts has_digit('rhwikmwfzis') == false
puts has_digit('ru4rlpyv') == true
puts has_digit('kokzjam32zl7bnucb') == true
puts has_digit('zpy6kasuouaq') == true
puts has_digit('nctja8xktcipevfo') == true
puts has_digit('anevx6cgqa') == true
puts has_digit('fzxbb') == false
puts has_digit('hryvztjuvjspcfjtezh') == false
puts has_digit('qvwbeepylwsqnipb') == false
puts has_digit('dsrgbgeqopjvqgjto') == false
puts has_digit('o6fwynnypu') == true
puts has_digit('oordrxk3j1lbo') == true
puts has_digit('kgbfxnmjbh') == false
puts has_digit('fklgfkiafmvxifqz') == false
puts has_digit('xct') == false
puts has_digit('kqf6tneg') == true
puts has_digit('xu0w') == true
puts has_digit('erqcrooj9tu') == true
puts has_digit('niouwjzphmyllvmwf') == false
puts has_digit('lmnuovrhlg') == false
puts has_digit('xlnjr33gtj4gcmuw') == true
puts has_digit('meijxmi0mfvsvajsqn') == true
puts has_digit('gnd7rksfnx0vxz') == true