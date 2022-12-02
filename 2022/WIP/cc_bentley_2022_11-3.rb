# Letter Shifting
# Create a function that takes a string and shifts the letters by an amount n but not the whitespace.
#
# Examples
# 	- shift_letters("Boom", 2) ➞ "omBo"
# 	- shift_letters("This is a test",  4) ➞ "test Th i sisa"
# 	- shift_letters("A B C D E F G H", 5) ➞  "D E F G H A B C"
#
# Notes
# 	- Keep the case as it is.
# 	- n can be larger than the total number of letters.

def shift_letters(str, n)
  #str.split("").rotate(n).join
  i = 0
  str_ary = str.split("")
  while i < n
    back = str_ary.pop() unless str_ary.eql? nil
    str_ary.unshift(back)
    i += 1
  end
  str_ary.join
end

puts shift_letters("A B C D E F G H", 5)
puts shift_letters("This is a test", 13)
puts shift_letters("Made by Harith Shah", 15)
puts shift_letters("Boom", 1)
# puts shift_letters("Made by Harith Shah", 15) == "adeb yH arithS hahM"
# puts shift_letters("Boom", 1) == "mBoo"
# puts shift_letters("The most addictive way to learn", 19) == "add icti vewaytole arn Th emost"
# puts shift_letters("This is a test", 13) == "stTh is i sate"
# puts shift_letters("Shift the letters", 1) == "sShif tth eletter"
# puts shift_letters("A B C D E F G H", 4) == "E F G H A B C D"
# puts shift_letters("Edabit helps you learn in bitesize chunks", 39) == "unksEd abith elp syoul ea rninbite sizech"
# puts shift_letters("To be or not to be", 6) == "ot to be Tob eo rn"
# puts shift_letters("Made by Harith Shah", 18) == "ahMa de byHari thSh"
# puts shift_letters("Boom", 0) == "Boom"
# puts shift_letters("The most addictive way to learn", 5) == "lea rnTh emostaddi cti ve wayto"
# puts shift_letters("This is a test", 9) == "isis at e stTh"
# puts shift_letters("Shift the letters", 3) == "ersSh ift thelett"
# puts shift_letters("A B C D E F G H", 10) == "G H A B C D E F"
# puts shift_letters("Birds of a Feather Flock Together", 32) == "therB ir d sofaFea therF lockToge"
# puts shift_letters("Talk the Talk", 1) == "kTal kth eTal"