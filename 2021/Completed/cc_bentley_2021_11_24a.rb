# Very Easy - Convert Age to Days
# Create a function that takes the age in years and returns the age in days.
# Examples
# calc_age(65) ➞ 23725
# calc_age(0) ➞ 0
# calc_age(20) ➞ 7300
# Notes
# Use 365 days as the length of a year for this challenge.
# Ignore leap years and days between last birthday and now.
# Expect only positive integer inputs.

def calc_age(age)
  age * 365
end

puts calc_age(10) == 3650
puts calc_age(0) == 0
puts calc_age(73) == 26645