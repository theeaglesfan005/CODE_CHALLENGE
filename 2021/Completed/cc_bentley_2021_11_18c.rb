# Medium - Censor Words Longer Than Four
# Characters
# Create a function that takes a string and censors words over four
# characters with *.
# Examples
# censor("The code is fourty") ➞ "The code is ******"
# censor("Two plus three is five") ➞ "Two plus ***** is five"
# censor("aaaa aaaaa 1234 12345") ➞ "aaaa ***** 1234 *****"
# Notes
# Don't censor words with exactly four characters.
# If all words have four characters or less, return the original string.
# The amount of * is the same as the length of the word.

def censor(s)
  a=s.split(" ")

  a.each_with_index do |item|
    if item.length > 4
      item.gsub! item, '*' * item.length
    end
  end

  a.join(" ")
end

puts censor("The code is fourty") == "The code is ******"
puts censor("Two plus three is five") == "Two plus ***** is five"
puts censor("aaaa aaaaa 1234 12345") == "aaaa ***** 1234 *****"
puts censor("abcdefghijklmnop") == "****************"
puts censor("a") == "a"