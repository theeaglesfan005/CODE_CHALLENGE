# Easy - The Fizz Buzz Test
# Write a program that returns an array of all the numbers from 1 to an integer
# argument. But for multiples of three use “Fizz” instead of the number and for the
# multiples of five use “Buzz”. For numbers which are multiples of both three and
# five use “FizzBuzz”.
# Example
# fizz_buzz(10) ➞ [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz"]
# fizz_buzz(15) ➞ [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11,
# "Fizz", 13, 14, "FizzBuzz"]
# Notes
# Make sure to return an array.

def fizz_buzz(maximum)
  a =(1..maximum).to_a

  a.map!{|x|
    if x % 3 == 0 && x % 5 == 0
      x = 'FizzBuzz'
    elsif x % 3 == 0
      x = 'Fizz'
    elsif x % 5 == 0
      x = 'Buzz'
    else
      x = x
    end
  }

  a
end

puts fizz_buzz(10) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz"]
puts fizz_buzz(15) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
puts fizz_buzz(100) == [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17,
                         "Fizz", 19, "Buzz", "Fizz", 22, 23, "Fizz", "Buzz", 26, "Fizz", 28, 29, "FizzBuzz", 31, 32, "Fizz",
                         34, "Buzz", "Fizz", 37, 38, "Fizz", "Buzz", 41, "Fizz", 43, 44, "FizzBuzz", 46, 47, "Fizz", 49,
                         "Buzz", "Fizz", 52, 53, "Fizz", "Buzz", 56, "Fizz", 58, 59, "FizzBuzz", 61, 62, "Fizz", 64,
                         "Buzz", "Fizz", 67, 68, "Fizz", "Buzz", 71, "Fizz", 73, 74, "FizzBuzz", 76, 77, "Fizz", 79,
                         "Buzz", "Fizz", 82, 83, "Fizz", "Buzz", 86, "Fizz", 88, 89, "FizzBuzz", 91, 92, "Fizz", 94,
                         "Buzz", "Fizz", 97, 98, "Fizz", "Buzz"]