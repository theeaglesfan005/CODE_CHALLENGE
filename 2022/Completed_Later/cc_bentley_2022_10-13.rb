# Hard - Map the Letters in a String
#
# Given a word, create a hash which stores the indexes of each letter in an array.
# 	- Make sure the letters are the keys.
# 	- Make sure the letters are symbols.
# 	- Make sure the indexes are stored in an array and those arrays are values.
#
# Examples
# 	- map_letters("dodo") ➞ { :d=>[0, 2], :o=>[1, 3] }
# 	- map_letters("froggy") ➞ { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
# 	- map_letters("grapes") ➞ { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }
#
# Notes
# All strings given will be lowercase.

def map_letters(word)
  word.each_char.with_index.with_object({}) { |(c, i), h| (h[c] ||= []) << i }.transform_keys(&:to_sym)
end

puts map_letters("") == {}
puts map_letters("a") == {:a=>[0]}
puts map_letters("abcdefg") == {:a=>[0], :b=>[1], :c=>[2], :d=>[3], :e=>[4], :f=>[5], :g=>[6]}
puts map_letters("balloon") == {:b=>[0], :a=>[1], :l=>[2, 3], :o=>[4, 5], :n=>[6]}
puts map_letters("imagining") == {:i=>[0, 4, 6], :m=>[1], :a=>[2], :g=>[3, 8], :n=>[5, 7]}
puts map_letters("mummy") == {:m=>[0, 2, 3], :u=>[1], :y=>[4]}
puts map_letters("aaaaaaabaaabaaabbb") == {:a=>[0, 1, 2, 3, 4, 5, 6, 8, 9, 10, 12, 13, 14], :b=>[7, 11, 15, 16, 17]}