# Sexagenary Cycle (Chinese Zodiac) - Very Hard
# In early recorded Chinese history, time was reckoned using the sexagenary (60-year) cycle, generated from two subcycles:
#   1. Five heavenly stems (elements) in this order: wood, fire, earth, metal, water. The stems change every two years.
#   2. Twelve earthly branches (animals) in this order: rat, ox, tiger, rabbit,dragon, snake, horse, sheep, monkey, rooster, dog, pig. The branches change yearly.

# The combinations between these two sub-cycles result in a 60-year cycle where no two years are the same — for example,
# the 5 years of the Rat have 5 different elements: 1924 Wood Rat, 1936 Fire Rat, 1948 Earth Rat, 1960 Metal Rat, 1972 Water Rat.
#
# The first 14 years of the current cycle are shown in the table below:
# Gregorian Year | Stem  | Branch
# 1984           | Wood  | Rat
# 1985           | Wood  | Ox
# 1986           | Fire  | Tiger
# 1987           | Fire  | Rabbit
# 1988           | Earth | Dragon
# 1989           | Earth | Snake
# 1990           | Metal | Horse
# 1991           | Metal | Sheep
# 1992           | Water | Monkey
# 1993           | Water | Rooster
# 1994           | Wood | Dog
# 1995           | Wood | Pig
# 1996           | Fire | Rat
# 1997           | Fire | Ox
#
# These days, the sexagenary cycle is used mainly for historical celebrations
# and events, and in Chinese astrology. The Gregorian calendar is now the standard means of reckoning time.
#
# Create a function that takes a number representing a year in the Gregorian
# calendar, and returns a string consisting of the corresponding stem-andbranch
# combination in the sexagenary cycle.
#
# Examples
# sexagenary(1971) ➞ "Metal Pig"
# sexagenary(1927) ➞ "Fire Rabbit"
# sexagenary(1974) ➞ "Wood Tiger"
#
def sexagenary(year)

  base = 4
  cycle_year = year - base

  heaven_stems = %w(Wood Fire Earth Metal Water)
  earth_branches =%w(Rat Ox Tiger Rabbit Dragon Snake Horse Sheep Monkey Rooster Dog Pig)

  stem_number = cycle_year % 10
  heaven_stem = stem_number / 2
  element = heaven_stems[heaven_stem]

  branch_number = cycle_year % 12
  animal = earth_branches[branch_number]

  element+" "+animal

end

puts sexagenary(1971) == 'Metal Pig'
puts sexagenary(1927) == 'Fire Rabbit'
puts sexagenary(2017) == 'Fire Rooster'
puts sexagenary(2000) == 'Metal Dragon'
puts sexagenary(1958) == 'Earth Dog'
puts sexagenary(1942) == 'Water Horse'
puts sexagenary(1974) == 'Wood Tiger'