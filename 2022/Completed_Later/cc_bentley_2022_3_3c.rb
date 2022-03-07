# Hard - Broken Keyboard
#
# 	Given what is supposed to be typed and what is actually typed, write a function that returns the broken key(s). The function looks like:
#
# 		find_broken_keys(correct phrase, what you actually typed)
#
# Examples
#
# 	find_broken_keys("happy birthday", "hawwy birthday") ➞ ["p"]
# 	find_broken_keys("starry night", "starrq light") ➞ ["y", "n"]
# 	find_broken_keys("beethoven", "affthoif5") ➞ ["b", "e", "v", "n"]
#
# Notes
#
# 	Broken keys should be ordered by when they first appear in the sentence.
# 	Only one broken key per letter should be listed.
# 	Letters will all be in lower case.

def find_broken_keys(str1, str2)
  arr1 = str1.split("")
  arr2 = str2.split("")
  arr_diff = []

  arr1.each_with_index do |val,index|
    arr_diff.append(val) if arr1[index] != arr2[index]
  end

  arr_diff.uniq
end

puts find_broken_keys("happy birthday", "hawwy birthday") == ["p"]
puts find_broken_keys("starry night", "starrq light") == ["y", "n"]
puts find_broken_keys("beethoven", "affthoif5") == ["b", "e", "v", "n"]
puts find_broken_keys("mozart", "aiwgvx") == ["m", "o", "z", "a", "r", "t"]
puts find_broken_keys("5678", "4678") == ["5"]
puts find_broken_keys("!!??$$", "$$!!??") == ["!", "?", "$"]