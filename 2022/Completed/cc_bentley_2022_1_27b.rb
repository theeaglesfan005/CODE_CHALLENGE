# Medium - Longest Daily Streak
# Create a function that takes an array of booleans that represent whether or not a
# player has logged into a game that day. Output the longest streak of consecutive
# logged in days.
# Examples
# daily_streak([true, true, false, true]) ➞ 2
# daily_streak([false, false, false]) ➞ 0
# daily_streak([true, true, true, false, true, true]) ➞ 3
# Notes
# Return your output as an integer.
# If a given array is all false, return 0 (see example #2)
# Method
def daily_streak(arr)
  long_streak = 0
  curr_streak = 0
  arr_size = arr.size

  i = 0
  while i < arr_size

    if arr[i] == true
      curr_streak += 1
      if curr_streak > long_streak
        long_streak = curr_streak
      end
    else
      if curr_streak > long_streak
        long_streak = curr_streak
      end

      curr_streak = 0
    end

    i += 1
  end

  long_streak
end

puts daily_streak([true, true, false, true]) == 2
puts daily_streak([false, false, false]) == 0
puts daily_streak([true, true, true, false]) == 3
puts daily_streak([true, true, true, false, true, true]) == 3
puts daily_streak([true, false]) == 1
puts daily_streak([true, false, true]) == 1
puts daily_streak([true, false, true, true]) == 2