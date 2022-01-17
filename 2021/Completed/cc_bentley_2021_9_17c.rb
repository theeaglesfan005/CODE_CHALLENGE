# A Subtle Switcheroo - Medium
# Create a function to reproduce the wrap around effect shown:
#                                                         Examples
# wrap_around("Hello, World!", 2) ➞ "llo, World!He"
# wrap_around("From what I gathered", -4) ➞ "eredFrom what I gath"
# wrap_around("Excelsior", 30) ➞ "elsiorExc"
# wrap_around("Nonscience", -116) ➞ "cienceNons"
# Notes
# The offset can be negative.
# The offset can be greater than the length of string.

def wrap_around(string, offset)
  string.split("").rotate(offset).join
end

puts wrap_around("Hello, World!", 2,) == "llo, World!He"
puts wrap_around("From what I gathered", -4) == "eredFrom what I gath"
puts wrap_around("No Changes", 0) == "No Changes"
puts wrap_around("S", -60) == "S"
puts wrap_around("Subordinating", 2) == "bordinatingSu"
puts wrap_around("Assemblywomen", -6) == "ywomenAssembl"
puts wrap_around("Pedantic", 4) == "nticPeda"
puts wrap_around("Nonscience", -116) == "cienceNons"
puts wrap_around("Excelsior", 30) == "elsiorExc"
puts wrap_around("Incomprehensibilities", 50) == "hensibilitiesIncompre"