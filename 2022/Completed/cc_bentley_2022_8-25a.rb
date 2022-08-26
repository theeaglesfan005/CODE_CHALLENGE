# Match the Last Item
# Create a function that takes an array of items and checks if the last item matches the rest of the array concatenated together.
#
# Examples
# - match_last_item(["rsq", "6hi", "g", "rsq6hig"]) ➞ true
# 	# The last item is the rest joined.
# - match_last_item([1, 1, 1, "11"]) ➞ false
# 	# The last item should be "111".
# - match_last_item([8, "thunder", true, "8thundertrue"]) ➞ true
#
# Notes
# The array is always filled with items.

def match_last_item(arr)
  arr.pop == arr.join('')
end

puts match_last_item(['rsq', '6hi', 'g', 'rsq6hig']) == true
puts match_last_item([0, 1, 2, 3, 4, 5, '12345']) == false
puts match_last_item(['for', 'mi', 'da', 'bel', 'formidable']) == false
puts match_last_item([8, 'thunder', true, '8thundertrue']) == true
puts match_last_item([1, 1, 1, '11']) == false
puts match_last_item(['tocto', 'G8G', 'xtohkgc', '3V8', 'ctyghrs', 100.88, 'fyuo', 'Q', 'toctoG8Gxtohkgc3V8ctyghrs100.88fyuoQ']) == true
