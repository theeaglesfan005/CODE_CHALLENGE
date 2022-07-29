# Medium - Sum of Resistance in Series Circuits
#
# When resistors are connected together in series, the same current passes through each resistor in the chain and the
# total resistance, RT, of the circuit must be equal to the sum of all the individual resistors added together. That is:
# RT = R1 + R2 + R3 ...
#
# Create a function that takes an array of values resistance that are connected in series, and calculates the total
# resistance of the circuit in ohms. The ohm is the standard unit of electrical resistance in the International System of Units ( SI ).
#
# Examples
# 	- series_resistance([1, 5, 6, 3]) ➞ "15 ohms"
# 	- series_resistance([16, 3.5, 6]) ➞ "25.5 ohms"
# 	- series_resistance([0.5, 0.5]) ➞ "1.0 ohm"
#
# Notes
# 	- All inputs will be valid.
# 	- Notice the singular ohm for values <= 1.

def series_resistance(arr)
  arr.sum <= 1.0 ? "#{arr.sum} ohm" : "#{arr.sum} ohms"
end

puts series_resistance([1, 5, 6, 3]) == "15 ohms"
puts series_resistance([0.2, 0.3, 0.4]) == "0.9 ohm"
puts series_resistance([10,12, 1, 10]) == "33 ohms"
puts series_resistance([10,13, 3.8, 20, 10]) == "56.8 ohms"
puts series_resistance([0.5, 0.5]) == "1.0 ohm"
puts series_resistance([16, 30, 22.8, 4]) == "72.8 ohms"
puts series_resistance([20, 15, 32.5, 2]) == "69.5 ohms"
puts series_resistance([52, 22, 20, 30]) == "124 ohms"
puts series_resistance([10, 12, 32, 4.9, 5, 6, 71]) == "140.9 ohms"
