# Tile Teamwork Tactics - Easy
# In a board game, a piece may advance 1-6 tiles forward depending on the  number rolled on a six-sided dice. If you advance your piece onto the same
# tile as another player's piece, both of you earn a bonus.
# Given you and your friend's tile number, create a function that returns if it's possible to earn a bonus when you roll the dice.
#
# Examples
# possible_bonus(3, 7) ➞ true
# possible_bonus(1, 9) ➞ false
# possible_bonus(5, 3) ➞ false
#
# Notes
#   * You cannot move backward (which is why example #3 doesn't work).
#   * If you are already on the same tile, return false, as you would be advancing away.
#   * Expect only positive integer inputs.

# def possible_bonus(a, b)
#   (b - a).between?(1, 6) ? true : false
# end

def possible_bonus(a, b)
  (b - a).between?(1, 6)
end

puts possible_bonus(3, 7)
puts possible_bonus(0, 6)
puts possible_bonus(1, 6)
puts possible_bonus(2, 6)
puts possible_bonus(3, 6)
puts possible_bonus(4, 6)
puts possible_bonus(5, 6)
puts !possible_bonus(6, 6)
puts !possible_bonus(7, 6)
puts possible_bonus(23, 27)
puts !possible_bonus(1, 9)
puts !possible_bonus(5, 3)