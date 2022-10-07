# Poker Hand Ranking
#
# In this challenge, you have to establish which kind of Poker combination is present in a deck of five cards.
# Every card is a string containing the card value (with the upper-case initial for face-cards) and the lower-case
# initial for suits, as in the examples below:
#
# "Ah" ➞ Ace of hearts
# "Ks" ➞ King of spades
# "3d" ➞ Three of diamonds
# "Qc" ➞ Queen of clubs
#
# There are 10 different combinations. Here's the list, in order of importance:
#
# Name				Description
# Royal Flush.........A, K, Q, J, 10, all with the same suit.
# Straight Flush......Five cards in sequence, all with the same suit.
# Four of a Kind......Four cards of the same rank.
# Full House..........Three of a Kind with a Pair.
# Flush...............Any five cards of the same suit, not in sequence.
# Straight............Five cards in a sequence, but not of the same suit.
# Three of a Kind.....Three cards of the same rank.
# Two Pair............Two different Pair.
# Pair................Two cards of the same rank.
# High Card...........No other valid combination.
#
# Given an array hand containing five strings being the cards, implement a function that returns a string with the name
# of the highest combination obtained, accordingly to the table above.
#
# Examples
# poker_hand_ranking(["10h", "Jh", "Qh", "Ah", "Kh"]) ➞ "Royal Flush"
# poker_hand_ranking(["3h", "5h", "Qs", "9h", "Ad"]) ➞ "High Card"
# poker_hand_ranking(["10s", "10c", "8d", "10d", "10h"]) ➞ "Four of a Kind"

def poker_hand_ranking(deck)
  #values = { "2": 2, "3": 3, "4": 4, "5": 5, "6": 6, "7": 7, "8": 8, "9": 9, "10": 10, "J": 11, "Q": 12, "K": 13, "A": 14 }

  FACE_VALUE = "AKQJT98765432"
  SUITS = "cdhs"

  deal = deck

  FACE_VALUE.each_byte do |f|
    SUITS.each_byte do |s|
      deal.push(f.chr + s.chr)
    end
  end
end

puts poker_hand_ranking(["10h", "Jh", "Qh", "Ah", "Kh"])
# puts poker_hand_ranking(["10h", "Jh", "Qh", "Ah", "Kh"]) == "Royal Flush"
# puts poker_hand_ranking(["3h", "5h", "Qs", "9h", "Ad"]) == "High Card"
# puts poker_hand_ranking(["10s", "10c", "8d", "10d", "10h"]) == "Four of a Kind"
# puts poker_hand_ranking(["4h", "9s", "2s", "2d", "Ad"]) == "Pair"
# puts poker_hand_ranking(["10s", "9s", "8s", "6s", "7s"]) == "Straight Flush"
# puts poker_hand_ranking(["10c", "9c", "9s", "10s", "9h"]) == "Full House"
# puts poker_hand_ranking(["8h", "2h", "8s", "3s", "3c"]) == "Two Pair"
# puts poker_hand_ranking(["Jh", "9h", "7h", "5h", "2h"]) == "Flush"
# puts poker_hand_ranking(["Ac", "Qc", "As", "Ah", "2d"]) == "Three of a Kind"
# puts poker_hand_ranking(["Ad", "Kd", "Qd", "Jd", "9d"]) == "Flush"
# puts poker_hand_ranking(["10h", "Jh", "Qs", "Ks", "Ac"]) == "Straight"
# puts poker_hand_ranking(["3h", "8h", "2s", "3s", "3d"]) == "Three of a Kind"
# puts poker_hand_ranking(["4h", "Ac", "4s", "4d", "4c"]) == "Four of a Kind"
# puts poker_hand_ranking(["3h", "8h", "2s", "3s", "2d"]) == "Two Pair"
# puts poker_hand_ranking(["8h", "8s", "As", "Qh", "Kh"]) == "Pair"
# puts poker_hand_ranking(["Js", "Qs", "10s", "Ks", "As"]) == "Royal Flush"
# puts poker_hand_ranking(["Ah", "3s", "4d", "Js", "Qd"]) == "High Card"