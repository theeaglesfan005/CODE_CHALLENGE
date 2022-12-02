# Expert - Word Overlapping
#
# Given two words, overlap them in such a way, morphing the last few letters of the first word with the first few
# letters of the second word. Return the shortest overlapped word possible.
#
# Examples
# 	- overlap("sweden", "denmark") ➞ "swedenmark"
# 	- overlap("edabit", "iterate") ➞ "edabiterate"
# 	- overlap("honey", "milk") ➞ "honeymilk"
# 	- overlap("dodge", "dodge") ➞ "dodge"
#
# Notes
# 	- All words will be given in lowercase.
# 	- If no overlap is possible, return both words one after the other (example #3).

def overlap(s1, s2)
  bridge = s1[(0..s1.length).detect { |idx| s2.start_with?(s1[idx..]) }..]
  s1.chomp(bridge) + s2
end

puts overlap("sweden", "denmark") == "swedenmark"
puts overlap("edabit", "iterate") == "edabiterate"
puts overlap("honey", "milk") == "honeymilk"
puts overlap("dodge", "dodge") == "dodge"
puts overlap("colossal", "alligator") == "colossalligator"
puts overlap("leave", "eavesdrop") == "leavesdrop"
puts overlap("joshua", "osha") == "joshuaosha"
puts overlap("diction", "dictionary") == "dictionary"
puts overlap("massive", "mass") == "massivemass"