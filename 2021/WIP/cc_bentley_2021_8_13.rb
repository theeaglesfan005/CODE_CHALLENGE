#Count Animals
#
#Find out number of animals hidden in a given string txt.
#
#You are provided with an array of animals given below:
#animals = ["dog", "cat", "bat", "cock", "cow", "pig","fox", "ant", "bird", "lion", "wolf", "deer", "bear","frog", "hen", "mole", "duck", "goat"]
#
#Rule: Return the maximum number of animal names. See the below example:
#
#txt = "goatcode"
#
#count_animals(txt) ➞ 2
#            # First animal = "dog"
#            # Remaining string = "atcoe",
#            # Second animal = "cat".
#            # count = 2 (correct)
#
#            # If you got a "goat" first time
#            # remaining string = "code",
#            # no animal will be found during next time.
#            # count = 1 (wrong)

#Examples
#-	count_animals("goatcode") ➞ 2 # "dog", "cat"
#-	count_animals("cockdogwdufrbir") ➞ 4 # "cow", "duck", "frog", "bird"
#-	count_animals("dogdogdogdogdog") ➞ 5

def count_animals(txt)
  animals = ["dog", "cat", "bat", "cock", "cow", "pig", "fox", "ant", "bird", "lion", "wolf", "deer", "bear", "frog", "hen", "mole", "duck", "goat"]
  animal_count = 0
  iteration_count = 0

  while iteration_count < 18
    animal_count += 1 if txt.include? animals[iteration_count]
    iteration_count += 1
  end

  animal_count

end

puts count_animals("dogcat") == 2
puts count_animals("bcaatt") == 2
puts count_animals("dopig") == 1
puts count_animals("goatcode") == 2
puts count_animals("dogdogdogdogdog") == 5
puts count_animals("cockdogwdufrbir") == 4
