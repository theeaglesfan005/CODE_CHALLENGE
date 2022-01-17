# Reverse the Odd Length Words - Medium
# Given a string, reverse all the words which have odd length. The even length words are not changed.
#
# Examples
# reverse_odd("Bananas") ➞ "sananaB"
# reverse_odd("One two three four") ➞ "enO owt eerht four"
# reverse_odd("Make sure uoy only esrever sdrow of ddo length") ➞ "Make sure you only reverse words of odd length"
# Notes
#   * There is exactly one space between each word and no punctuation is used.

def reverse_odd(str)
  reverse_arr = str.split(' ')
  reverse_arr.each do |item|
    item.reverse! if item.length.odd?
  end
  reverse_arr.join(' ')
end

puts reverse_odd("One two three four") == 'enO owt eerht four'
puts reverse_odd('Make sure uoy only esrever sdrow of ddo length') == 'Make sure you only reverse words of odd length'
puts reverse_odd('') == ''
puts reverse_odd('Bananas') == 'sananaB'
puts reverse_odd('Even even even even even even even even even') == 'Even even even even even even even even even'
puts reverse_odd('Odd odd odd odd odd odd odd odd odd odd odd') == 'ddO ddo ddo ddo ddo ddo ddo ddo ddo ddo ddo'