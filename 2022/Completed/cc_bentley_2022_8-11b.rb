# Medium - Construct and Deconstruct
#
# Given a string, create a function that outputs an array, building and deconstructing the string letter by letter. See the examples below for some helpful guidance.
#
# Examples
# construct_deconstruct("Hello") ➞ [
#   "H",
#   "He",
#   "Hel",
#   "Hell",
#   "Hello",
#   "Hell",
#   "Hel",
#   "He",
#   "H"
# ]
#
# construct_deconstruct("edabit") ➞ [
#   "e",
#   "ed",
#   "eda",
#   "edab",
#   "edabi",
#   "edabit",
#   "edabi",
#   "edab",
#   "eda",
#   "ed",
#   "e"
# ]
#
# construct_deconstruct("the sun") ➞ [
#   "t",
#   "th",
#   "the",
#   "the ",
#   "the s",
#   "the su",
#   "the sun",
#   "the su",
#   "the s",
#   "the ",
#   "the",
#   "th",
#   "t"
# ]
#
# Notes
# Include spaces (see example #3).

def construct_deconstruct(s)
  dc_ary1 = []
  i = 0

  while i < s.length
    dc_ary1 << s[0, s.length - i]
    i += 1
  end

  dc_ary = dc_ary1.reverse.concat(dc_ary1)
  dc_ary.slice!(dc_ary.index(s) || dc_ary.length)
  dc_ary
end

puts construct_deconstruct("Hello") == ["H", "He", "Hel", "Hell", "Hello", "Hell", "Hel", "He", "H"]
puts construct_deconstruct("edabit") == ["e", "ed", "eda", "edab", "edabi", "edabit", "edabi", "edab", "eda", "ed", "e"]
puts construct_deconstruct("the sun") == ["t", "th", "the", "the ", "the s", "the su", "the sun", "the su", "the s", "the ", "the", "th", "t"]
puts construct_deconstruct("so long partner") == ["s", "so", "so ", "so l", "so lo", "so lon", "so long", "so long ", "so long p", "so long pa", "so long par", "so long part", "so long partn", "so long partne", "so long partner", "so long partne", "so long partn", "so long part", "so long par", "so long pa", "so long p", "so long ", "so long", "so lon", "so lo", "so l", "so ", "so", "s"]
puts construct_deconstruct("s p a c e s") == ["s", "s ", "s p", "s p ", "s p a", "s p a ", "s p a c", "s p a c ", "s p a c e", "s p a c e ", "s p a c e s", "s p a c e ", "s p a c e", "s p a c ", "s p a c", "s p a ", "s p a", "s p ", "s p", "s ", "s"]
puts construct_deconstruct("edabit is a awesome") == ["e", "ed", "eda", "edab", "edabi", "edabit", "edabit ", "edabit i", "edabit is", "edabit is ", "edabit is a", "edabit is a ", "edabit is a a", "edabit is a aw", "edabit is a awe", "edabit is a awes", "edabit is a aweso", "edabit is a awesom", "edabit is a awesome", "edabit is a awesom", "edabit is a aweso", "edabit is a awes", "edabit is a awe", "edabit is a aw", "edabit is a a", "edabit is a ", "edabit is a", "edabit is ", "edabit is", "edabit i", "edabit ", "edabit", "edabi", "edab", "eda", "ed", "e"]
puts construct_deconstruct("123456789") == ["1", "12", "123", "1234", "12345", "123456", "1234567", "12345678", "123456789", "12345678", "1234567", "123456", "12345", "1234", "123", "12", "1"]
puts construct_deconstruct("") == []
puts construct_deconstruct("        ") == [" ", "  ", "   ", "    ", "     ", "      ", "       ", "        ", "       ", "      ", "     ", "    ", "   ", "  ", " "]
