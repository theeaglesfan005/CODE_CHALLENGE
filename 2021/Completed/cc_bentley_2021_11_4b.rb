# Easy - Find the Amount of Potatoes
# Create a function to return the amount of potatoes there are in a string.
#   Examples
# potatoes("potato") ➞ 1
# potatoes("potatopotato") ➞ 2
# potatoes("potatoapple") ➞ 1
#
def potatoes(potato)
  potato.scan('potato').count
end

puts potatoes("potato") == 1
puts potatoes("potatopotatocherry") == 2
puts potatoes("potatopotatopotatoorange") == 3
puts potatoes("potatopotatobananapotatopotato") == 4
puts potatoes("potatopotatomangopotatopotatopotato") == 5
puts potatoes("potatocucumberpotatopotatopotatopotatopotato")== 6