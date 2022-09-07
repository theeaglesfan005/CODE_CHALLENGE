# frozen_string_literal: true
# Count Animals
#
# Find out number of animals hidden in a given string txt.
#
# You are provided with an array of animals given below:
# animals = ["dog", "cat", "bat", "cock", "cow", "pig","fox", "ant", "bird", "lion", "wolf", "deer", "bear","frog", "hen", "mole", "duck", "goat"]
#
# Rule: Return the maximum number of animal names. See the below example:
#
# txt = "goatcode"
#
# count_animals(txt) ➞ 2
#            # First animal = "dog"
#            # Remaining string = "atcoe",
#            # Second animal = "cat".
#            # count = 2 (correct)
#
#            # If you got a "goat" first time
#            # remaining string = "code",
#            # no animal will be found during next time.
#            # count = 1 (wrong)

# Examples
# count_animals("goatcode") ➞ 2 # "dog", "cat"
# count_animals("cockdogwdufrbir") ➞ 4 # "cow", "duck", "frog", "bird"
# count_animals("dogdogdogdogdog") ➞ 5
require 'set'
def count_animals(txt)
  animals = %w[dog cat bat cock cow pig fox ant bird lion wolf deer bear frog hen mole duck goat]
  txt_dup = txt.dup
  txt_dup2 = txt.dup
  i = txt_dup.length
  t = txt_dup2.length

  animal_count = 0
  animal_count_reverse = 0

  animals_sorted = animals.sort.sort_by { |s| [s.length, s] }
  animals_reverse = animals_sorted.reverse

  while i > 2
    animals_sorted.each do |a|
      next unless a.chars.to_set.subset?(txt_dup.chars.to_set)

      animal_count += 1
      animal_ary = a.split('')
      animal_ary.each do |b|
        txt_dup.sub!(b, '')
      end
    end
    i -= 1
  end

  while t > 2
    animals_reverse.each do |r|
      next unless r.chars.to_set.subset?(txt_dup2.chars.to_set)

      animal_count_reverse += 1
      animal_ary_reverse = r.split('')
      animal_ary_reverse.each do |c|
        txt_dup2.sub!(c, '')
      end
    end
    t -= 1
  end

  animal_count > animal_count_reverse ? animal_count : animal_count_reverse
end

puts count_animals('dogcat') == 2
puts count_animals('bcaatt') == 2
puts count_animals('dopig') == 1
puts count_animals('goatcode') == 2
puts count_animals('dogdogdogdogdog') == 5
puts count_animals('cockdogwdufrbir') == 4
