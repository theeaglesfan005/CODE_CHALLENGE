# Challenge:
#
#   No Yelling
#
# Create a function that transforms sentences ending with multiple question marks ? or exclamation marks ! into a sentence only ending with one without changing punctuation in the middle of the sentences.
#
#   Examples
# •	no_yelling("What went wrong?????????") ➞ "What went wrong?"
# •	no_yelling("Oh my goodness!!!") ➞ "Oh my goodness!"
# •	no_yelling("I just!!! can!!! not!!! believe!!! it!!!") ➞ "I just!!! can!!! not!!! believe!!! it!"
# o	# Only change repeating punctuation at the end of the sentence.
# •	no_yelling("Oh my goodness!") ➞ "Oh my goodness!"
# o	# Do not change sentences where there exists only one or zero exclamation marks/question marks.
# •	no_yelling("I just cannot believe it.") ➞ "I just cannot believe it."
#
# Notes
# •	Only change ending punctuation - keep the exclamation marks or question marks in the middle of the sentence the same (see third example).
#   •	Don't worry about mixed punctuation (no cases that end in something like ?!??!).
# •	Keep sentences that do not have question/exclamation marks the same.

def no_yelling(phrase);
phrase_rev = phrase.reverse
ending_mark = ''
punctuation = true

ending_mark = phrase_rev[0] if phrase_rev.start_with?('?') || phrase_rev.start_with?('!')

while punctuation do
  if phrase_rev.start_with?('?') || phrase_rev.start_with?('!')
    phrase_rev = phrase_rev.reverse
    phrase_rev.chop!
  else
    punctuation = false
  end
  phrase_rev = phrase_rev.reverse
end
phrase_rev + ending_mark
end

puts no_yelling("What went wrong?????????") == "What went wrong?"
puts no_yelling("Oh my goodness!!!") == "Oh my goodness!"
puts no_yelling("WHAT!") == "WHAT!"
puts no_yelling("WHAT?") == "WHAT?"
puts no_yelling("Oh my goodness!") == "Oh my goodness!"
puts no_yelling("I just cannot believe it.") == "I just cannot believe it."
puts no_yelling("I just!!! can!!! not!!! believe!!! it!!!") == "I just!!! can!!! not!!! believe!!! it!"
puts no_yelling("That's a ton!! of cheese!!!!") == "That's a ton!! of cheese!"