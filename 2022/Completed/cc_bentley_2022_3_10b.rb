# Medium - Censor Words Longer Than Four Characters.txt
#
# 	Create a function that takes a string and censors words over four characters with *.
#
# Examples
#
# 	censor("The code is fourty") ➞ "The code is ******"
# 	censor("Two plus three is five") ➞ "Two plus ***** is five"
# 	censor("aaaa aaaaa 1234 12345") ➞ "aaaa ***** 1234 *****"
#
# Notes
#
# 	Don't censor words with exactly four characters.
# 	If all words have four characters or less, return the original string.
# 	The amount of * is the same as the length of the word.

def censor(s)
  censored_ary = []
  s.split(" ").each { |word|
    if word.length > 4
      censored_ary << ("*" * word.length)
    else
      censored_ary << word
    end
  }

  censored_ary.join(" ")
end

puts censor("The code is fourty") == "The code is ******"
puts censor("Two plus three is five") == "Two plus ***** is five"
puts censor("aaaa aaaaa 1234 12345") == "aaaa ***** 1234 *****"
puts censor("abcdefghijklmnop") == "****************"
puts censor("a") == "a"