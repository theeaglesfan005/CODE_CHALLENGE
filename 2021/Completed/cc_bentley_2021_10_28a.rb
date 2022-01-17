#Very Easy - Convert Minutes into Seconds
# Write a function that takes an integer minutes and converts it to seconds.
# Examples
# convert(5) ➞ 300
# convert(3) ➞ 180
# convert(2) ➞ 120

def convert(minutes)
  minutes*60
end

puts convert(6) == 360
puts convert(4) == 240
puts convert(8) == 480
puts convert(60) == 3600