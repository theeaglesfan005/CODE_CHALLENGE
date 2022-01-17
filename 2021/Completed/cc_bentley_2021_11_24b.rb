# Easy - State Names and Abbreviations
# Create a function that filters out an array of state names into two
# categories based on the second parameter.
# Abbreviations abb
# Full names full
# Examples
# filter_state_names(["Arizona", "CA", "NY", "Nevada"], "abb") ➞ ["CA",
# "NY"]
# filter_state_names(["Arizona", "CA", "NY", "Nevada"], "full") ➞ ["Arizona",
# "Nevada"]
# filter_state_names(["MT", "NJ", "TX", "ID", "IL"], "abb") ➞ ["MT", "NJ",
# "TX", "ID", "IL"]
# filter_state_names(["MT", "NJ", "TX", "ID", "IL"], "full") ➞ []
# Notes
# State abbreviations will always be in uppercase.

def filter_state_names(arr, type)
  arr2 = Array.new
  enum = arr.each

  if type == "abb"
    loop do
      x = enum.next
      arr2 << x if x.length == 2
    end
  else
    loop do
      x = enum.next
      arr2 << x if x.length > 2
    end
  end

  arr2
end

puts filter_state_names(['Arizona', 'CA', 'NY', 'Nevada'], 'abb') == ['CA', 'NY']
puts filter_state_names(['Arizona', 'CA', 'NY', 'Nevada'], 'full') == ['Arizona', 'Nevada']
puts filter_state_names(['MT', 'NJ', 'TX', 'ID', 'IL'], 'abb') == ['MT', 'NJ', 'TX', 'ID', 'IL']
puts filter_state_names(['MT', 'NJ', 'TX', 'ID', 'IL'], 'full') == []
puts filter_state_names(['Montana', 'FL'], 'abb') == ['FL']
puts filter_state_names(['Montana', 'FL'], 'full') == ['Montana']