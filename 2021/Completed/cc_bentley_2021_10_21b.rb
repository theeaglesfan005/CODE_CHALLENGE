# Easy - Halloween Day
# Create a function that takes date in the format yyyy/mm/dd as an input and
#   returns "Bonfire toffee" if the date is October 31, else return "toffee".
#   Examples
# halloween("2013/10/31") ➞ "Bonfire toffee"
# halloween("2012/07/31") ➞ "toffee"
# halloween("2011/10/12") ➞ "toffee"

def halloween(dt)
  dt.include?('/10/31') ? 'Bonfire toffee' : 'toffee'
end

puts halloween("2013/10/31") == "Bonfire toffee"
puts halloween("2012/07/31") == "toffee"
puts halloween("2015/10/31") == "Bonfire toffee"
puts halloween("2011/10/12") == "toffee"
puts halloween("2008/10/11") == "toffee"