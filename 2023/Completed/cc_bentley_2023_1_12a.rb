# Hall Monitor 2
#
# A floor plan is arranged as follows:
# 	- You may freely move between rooms 1 and 2.
# 	- You may freely move between rooms 3 and 4.
# 	- However, you can enter the hallway to move between rooms 2 and 4.
#
# Floor Plan
#
# |-------------|-------------|--------|
# |            |||	       |||	     |
# |      1     |||    2	   |||	     |
# |-------------|-------------|	     |
#      			   			|	H    |
# |-------------|-------------| 	     |
# | 	     	 |||	   	   |||	     |
# |      3     |||    4	   |||	     |
# |-------------|-------------|--------|
#
# Create a function that validates whether the route taken between rooms is possible. The hallway will be given as the letter "H".
#
# Examples
# 	- possible_path([1, 2, "H", 4, 3]) ➞ true
# 	- possible_path(["H", 1, 2]) ➞ false
# 	- possible_path([4, 3, 4, "H", 4, "H"]) ➞ true
#
# Notes
# 	- A route may begin or end in any room (including the hallway).
# 	- All inputs are either numbers 1-4 or the letter "H".
# 	- No rooms will repeat.

def possible_path(arr)
  arr.join('') !~ /13|31|14|41|23|32|1H|H1|3H|H3/
end

puts possible_path([1, 2, "H", 4, 3]) == true
puts possible_path(["H", 1, 2]) == false
puts possible_path([4, 3, 4, "H", 4, "H"]) == true
puts possible_path(["H"]) == true
puts possible_path([1]) == true
puts possible_path([1, 2, 1]) == true
puts possible_path(["H", 2, 1, "H", 2]) == false
puts possible_path([3, "H", 2, 1]) == false
puts possible_path(["H", 2, 3, "H"]) == false
puts possible_path([1, 3, 4]) == false
