# Medium - Is it True?
#
# In this challenge you will be given a relation between two numbers, written as a string. Write a function that determines if the relation is true or false.
#
# Examples
#
# is_it_true("2=2") ➞ true
# is_it_true("8<7") ➞ false
# is_it_true("5=13") ➞ false
# is_it_true("15>4") ➞ true
#
# Notes
# Tests will only have three types of relations: =, >, and <

def is_it_true(relation)
  first_num = relation.partition(/[<>=]/).first.to_i
  operator = relation.match(/[<>=]/).to_s
  last_num = relation.partition(/[<>=]/).last.to_i

  first_num.public_send(operator.gsub('=', '=='), last_num)
end

puts is_it_true("8<7") == false
puts is_it_true("15>4") == true
puts is_it_true("6>6") == false
puts is_it_true("10<10") == false
puts is_it_true("10<9") == false
puts is_it_true("5>6") == false
puts is_it_true("2=2") == true
puts is_it_true("5=13") == false
puts is_it_true("15=137") == false
puts is_it_true("101=101") == true
