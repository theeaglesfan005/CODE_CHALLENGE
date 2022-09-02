# Very Hard - Shiritori Game
#
# This challenge is an English twist on the Japanese word game Shiritori. The basic premise is to follow two rules:
#
# 	1. ) First character of next word must match last character of previous word.
# 	2. ) The word must not have already been said.
#
# Below is an example of a Shiritori game:
#
# 	- ["word", "dowry", "yodel", "leader", "righteous", "serpent"]  # valid!
# 	- ["motive", "beach"]  # invalid! - beach should start with "e"
# 	- ["hive", "eh", "hive"]  # invalid! - "hive" has already been said
#
# Write a Shiritori class that has two instance variables:
# 	- @words: an array of words already said.
# 	- @game_over: a boolean that is true if the game is over.
#
# and two instance methods:
# 	- play: a method that takes in a word as an argument and checks if it is valid (the word should follow rules #1 and #2 above).
# 		- If it is valid, it adds the word to the @words array, and returns the @words array.
# 		- If it is invalid (either rule is broken), it returns "game over" and sets the @game_over boolean to true.
# 	- restart: a method that sets the @words array to an empty one [] and sets the @game_over boolean to false. It should return "game restarted".
#
# Examples
#
# 	- my_shiritori = Shiritori.new()
# 	- my_shiritori.play("apple") ➞ ["apple"]
# 	- my_shiritori.play("ear") ➞ ["apple", "ear"]
# 	- my_shiritori.play("rhino") ➞ ["apple", "ear", "rhino"]
# 	- my_shiritori.play("corn") ➞ "game over"
# 		- Corn does not start with an "o".
#
# 	- my_shiritori.words ➞  ["apple", "ear", "rhino"]
# 		- Words should be accessible.
#
# 	- my_shiritori.restart() ➞ "game restarted"
# 	- my_shiritori.words ➞ []
# 		- Words array should be set back to empty.
#
# 	- my_shiritori.play("hostess") ➞ ["hostess"]
# 	- my_shiritori.play("stash") ➞ ["hostess", "stash"]
# 	- my_shiritori.play("hostess") ➞ "game over"
# 		- Words cannot have already been said.
#
# Notes
# 	- The play method should not add an invalid word to the @words array.
# 	- You don't need to worry about capitalization or white spaces for the inputs for the play** method.
# 	- The play method will only take in single arguments as inputs.
class Shiritori
  attr_reader :words, :game_over

  def initialize
    @words = []
    @game_over = false
  end

  def restart
    initialize
    'game restarted'
  end

  def play(word)
    if @words.empty? || ((@words.last[-1] == word[0]) && (!@words.include? word))
      @words << word
      @words
    else
      @game_over = true
      'game over'
    end
  end

end

my_shiritori = Shiritori.new

puts my_shiritori.game_over == false
puts my_shiritori.play('apple') == ['apple']
puts my_shiritori.words == ['apple']
puts my_shiritori.play('ear') == ['apple', 'ear']
puts my_shiritori.play('rhino') == ['apple', 'ear', 'rhino']
puts my_shiritori.play('ocelot') == ['apple', 'ear', 'rhino', 'ocelot']
puts my_shiritori.game_over == false
puts my_shiritori.play('oops') == 'game over'
puts my_shiritori.game_over == true
puts my_shiritori.words == ['apple', 'ear', 'rhino', 'ocelot']
puts my_shiritori.restart == 'game restarted'
puts my_shiritori.words == []
puts my_shiritori.game_over == false
puts my_shiritori.play('hostess') == ['hostess']
puts my_shiritori.game_over == false
puts my_shiritori.play('stash') == ['hostess', 'stash']
puts my_shiritori.play('hostess') == 'game over'
puts my_shiritori.words == ['hostess', 'stash']
