# Seven Boom! - Medium
# Create a function that takes an array of numbers and return "Boom!" if the
# digit 7 appears in the array. Otherwise, return "there is no 7 in the array".
#   Examples
# seven_boom([1, 2, 3, 4, 5, 6, 7]) ➞ "Boom!"
# seven_boom([8, 6, 33, 100]) ➞ "there is no 7 in the array"
# seven_boom([2, 55, 60, 97, 86]) ➞ "Boom!"

def seven_boom(arr)
  (arr.join.include? '7') ? 'Boom!' : 'there is no 7 in the array'
end

puts seven_boom([2, 6, 7, 9, 3]) == "Boom!"
puts seven_boom([33, 68, 400, 5]) == "there is no 7 in the array"
puts seven_boom([86, 48, 100, 66]) == "there is no 7 in the array"
puts seven_boom([76, 55, 44, 32]) == "Boom!"
puts seven_boom([35, 4, 9, 37]) == "Boom!"