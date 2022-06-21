# Reverse Titling
#
# The normal .titlecase function in Ruby on Rails capitalises the first letter of every word in a given sentence, leaving all the other letters as lowercase.
#
# The goal of this challenge is to create a reverse_title() function, which achieves the complete opposite! Make the first letter of every word lowercase, and the rest uppercase!
#
# Examples
#
# reverse_title("this is a title") ➞ "tHIS iS a tITLE"
# reverse_title("BOLD AND BRASH!") ➞ "bOLD aND bRASH!"
# reverse_title("Elephants dance about bravely in Thailand") ➞ "eLEPHANTS dANCE aBOUT bRAVELY iN tHAILAND"

def reverse_title(txt)
  txt.upcase.split(' ').map{|word| word.sub(/^[A-Z]/, &:downcase)}.join(' ')
end

puts reverse_title("this is a title") == "tHIS iS a tITLE"
puts reverse_title("Bold and Brash!") == "bOLD aND bRASH!"
puts reverse_title("Elephants Dance About Bravely in Thailand") == "eLEPHANTS dANCE aBOUT bRAVELY iN tHAILAND"
puts reverse_title("bRing it On!!!") == "bRING iT oN!!!"
puts reverse_title("Dot Dot Dot...") == "dOT dOT dOT..."
puts reverse_title("...") == "..."
puts reverse_title("a Fine day") == "a fINE dAY"
puts reverse_title("An Important Document") == "aN iMPORTANT dOCUMENT"
puts reverse_title("Paper 1 is a thesis.") == "pAPER 1 iS a tHESIS."
puts reverse_title("king of spades") == "kING oF sPADES"
puts reverse_title("Alphanumerically Brilliant Crowds") == "aLPHANUMERICALLY bRILLIANT cROWDS"
puts reverse_title("123456789") == "123456789"
puts reverse_title("a b c d e f g h i j k") == "a b c d e f g h i j k"
puts reverse_title("better LATE than NEVER") == "bETTER lATE tHAN nEVER"