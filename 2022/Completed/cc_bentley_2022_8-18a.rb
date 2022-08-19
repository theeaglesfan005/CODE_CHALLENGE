# Fibonacci Sequence
# The Fibonacci Sequence is the sequence of numbers (Fibonacci Numbers) whose sum is the two preceding numbers
# (e.g. 0, 1, 1, 2, 3, etc). Using 0 and 1 as the starting values, create a function that returns an array containing
# all of the Fibonacci numbers less than 255.

# Examples
# On generating a Fibonacci number where input is the two preceding values starting from 0 and 1 [0, 1, ...].
# 	- fibonacci_sequence(0, 1) ➞ 1
# 	- fibonacci_sequence(1, 1) ➞ 2
# 	- fibonacci_sequence(1, 2) ➞ 3

def fibonacci_sequence
  (1..12).inject([0, 1]) { |fib| fib << fib.last(2).inject(:+) }
end

puts fibonacci_sequence == [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233]
