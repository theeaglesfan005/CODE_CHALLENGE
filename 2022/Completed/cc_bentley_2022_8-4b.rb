# Medium - Ping Pong!
#
# A game of table tennis almost always sounds like Ping! followed by Pong! Therefore, you know that Player 2 has won
# if you hear Pong! as the last sound (since Player 1 didn't return the ball back).
#
# Given an array of Ping!, create a function that inserts Pong! in between each element. Also:
# If win equals true, end the array with Pong!.
# If win equals false, end with Ping! instead.
#
# Examples
# ping_pong(["Ping!"], true) ➞ ["Ping!", "Pong!"]
# ping_pong(["Ping!", "Ping!"], false) ➞ ["Ping!", "Pong!", "Ping!"]
# ping_pong(["Ping!", "Ping!", "Ping!"], true) ➞ ["Ping!", "Pong!", "Ping!", "Pong!", "Ping!", "Pong!"]
#
# Notes
# You will always return the ball (i.e. the Pongs are yours).
# Player 1 serves the ball and makes Ping!.
# Return an array of strings.

def ping_pong(arr, win)
  ary = arr.zip(["Pong!"].cycle).flatten
  ary.pop unless win
  ary
end

puts ping_pong(%w[Ping! Ping! Ping!], true) == %w[Ping! Pong! Ping! Pong! Ping! Pong!]
puts ping_pong(%w[Ping! Ping!], false) == %w[Ping! Pong! Ping!]
puts ping_pong(['Ping!'], true) == %w[Ping! Pong!]
