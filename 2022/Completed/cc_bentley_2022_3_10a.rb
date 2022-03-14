# Easy - First N Mid.txt
#
# 	Create a function that takes a string and returns the first character of every word if the length of the word is even and the middle character if the length of the word is odd.
#
# Examples
#
# 	stmid("Alexa have to paid") ➞ "ehtp"
# 		# "e" is the middle character of "Alexa"
# 		# "h" is the first character of "have"
# 	stmid("Th3 0n3 4nd 0n1y") ➞ "hnn0"
# 	stmid("who is the winner") ➞ "hihw"

def stmid(str)

  def the_middle(s)
    i = (s.length - 1) / 2
    s[i..-i.succ]
  end

  str_array = str.split(" ")

  str_array.each_with_index do |val, index|
    val.length.even? ? str_array[index] = val.chars.first : str_array[index] = the_middle(val)
  end

  str_array.join("")
end

puts stmid("Alexa have to paid") == "ehtp"
puts stmid("Th3 0n3 4nd 0n1y") == "hnn0"
puts stmid("who is the winner") == "hihw"