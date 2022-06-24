# frozen_string_literal: true
# Secret Function 4.0
# Create a function based on the input and output. Look at the examples, there is a pattern.
#
# Examples
# secret("p.one.two.three") ➞ "<p class='one two three'></p>"
# secret("p.one") ➞ "<p class='one'></p>"
# secret("p.four.five") ➞ "<p class='four five'></p>"
#
# Notes
# Input is a string.

def secret(text)
  split_ary = text.split('.')
  html_tag = split_ary[0]
  "<#{html_tag} class='#{split_ary.drop(1).join(' ')}'></#{html_tag}>"
end

puts secret('p.one.two.three') == "<p class='one two three'></p>"
puts secret('p.one') == "<p class='one'></p>"
puts secret('h3.one') == "<h3 class='one'></h3>"
puts secret('p.four.five') == "<p class='four five'></p>"
puts secret('p.a.b.c.d') == "<p class='a b c d'></p>"
puts secret('h1.a.b.c.d') == "<h1 class='a b c d'></h1>"
