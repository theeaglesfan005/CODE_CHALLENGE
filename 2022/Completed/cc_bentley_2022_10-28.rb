# Spartans Cipher
#
# In Spartans Cipher, encoding is done by writing the text horizontally, across the strap in the plaintext word of a message. In ancient times, Spartans and Greeks invented an interesting way of encryption called Scytale.
#
# The ancient Greeks, and the Spartans in particular, are said to have used this cipher to communicate during military campaigns.
#
# Create a function that takes two arguments, a number of slides n_Slide and a string message, and returns the encoded message.
#
# There are some variations on the rules of encipherment. One version of the cipher rules are outlined below:
#
# message = "Mubashir Scytale Code"
# n_Slide = 6
#
# spartans_cipher(message, n_Slide) ➞ "Ms t euhSaC biclo aryed"
#
# Step 1: Imagine this Scytale:
#
# Step 2: You can write the given message on a 6 slide Scytale like this:
# | M | u | b | a |
# | s | h | i | r |
# |   | S | c | y |
# | t | a | l | e |
# |   | C | o | d |
# | e |   |   |   |
#
# Step 3: Encode the message column-wise:
# 	- "Ms t euhSaC biclo aryed "
#
# Step 4: Trim all spaces at the end and return the final encoded message:
# 	- "Ms t euhSaC biclo aryed"
# #
# Examples
# 	spartans_cipher("Mubashir Scytale Code", 6) ➞ "Ms t euhSaC biclo aryed"
# 	spartans_cipher("Matt and Edabit are amazing", 8) ➞ "M  baai aaEirmn tndteag tda  z"

def spartans_cipher(message, n_Slide)

  @message = message
  @cipher = n_Slide

  remainder = @message.length % @cipher

  while remainder != 0
    @message << " "
    remainder = @message.length % @cipher
  end

  plain = @message.chars.to_a
  number_of_rows = plain.length/@cipher
  encoded = []
  encoded_msg = ""

  (0...number_of_rows).each { |i|
    (0...@cipher).each do |j|
      encoded.push(plain[i + j * number_of_rows])
    end
  }

  encoded = encoded.compact
  encoded.pop while encoded[-1] == " "

  encoded.each { |char| encoded_msg << char }

  encoded_msg
end

puts spartans_cipher("Mubashir Scytale Code", 6) == "Ms t euhSaC biclo aryed"
puts spartans_cipher("Matt and Edabit are amazing", 8) == "M  baai aaEirmn tndteag tda  z"
puts spartans_cipher("Evgeny SH will make decipher of this challenge", 8) == "E lepf evSl h cngH dethge merhaenwac il yikiosl"
puts spartans_cipher("HELPMEIAMUNDERATTACK", 4) == "HENTEIDTLAEAPMRCMUAK"
puts spartans_cipher("", 99) == ""
puts spartans_cipher("TheQuickBrownFoxJumpsOverTheLazyDog.", 6) == "TcnmrzhkFpTyeBoshDQrxOeouoJvLgiwuea."
