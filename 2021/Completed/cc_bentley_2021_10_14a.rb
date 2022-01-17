# Very Easy - Return Something to Me!
# Write a function that returns the string "something" joined with a space "
# " and the given argument a.
# Examples
# give_me_something("is better than nothing") ➞ "something is better
# than nothing"
# give_me_something("Bob Jane") ➞ "something Bob Jane"
# give_me_something("something") ➞ "something something"
# Notes
# Assume an input is given.

def give_me_something(a)
  "something #{a.strip}"
end

puts give_me_something("a") == "something a"
puts give_me_something("is cooking") == "something is cooking"
puts give_me_something(" is cooking") == "something is cooking"