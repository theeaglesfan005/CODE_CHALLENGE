# Hard - East or West
# You will be given an array of string "east" formatted differently every time. Create
# a function that returns "west" wherever there is "east". Format the string
# according to the input. Check the examples below to better understand the
# question.
# Examples
# direction(["east", "EAST", "eastEAST"]) ➞ ["west", "WEST", "westWEST"]
# direction(["eAsT EaSt", "EaSt eAsT"]) ➞ ["wEsT WeSt", "WeSt wEsT"]
# direction(["east EAST", "e a s t", "E A S T"]) ➞ ["west WEST", "w e s t", "W E S T"]
# Notes
# The input will only be "east" in different formats.

def direction(arr)
  arr.map! { |n| n.to_s.tr('eastEAST', 'westWEST') }
end

puts direction(["east", "EAST", "eastEAST"]) == ["west", "WEST", "westWEST"]
puts direction(["eAsT EaSt", "EaSt eAsT"]) == ["wEsT WeSt", "WeSt wEsT"]
puts direction(["east EAST", "e a s t", "E A S T"]) == ["west WEST", "w e s t", "W E S T"]