# Maximum Travel Distance
#
# Write a function that takes fuel (liters), fuel_usage (liters/100km), passengers, air_con (boolean) and returns maximum distance that car can travel.
#
#   fuel is the number of liters of fuel in the fuel tank.
#   fuel_usage is basic fuel consumption per 100 km (with the driver inside only).
#   Every additional passenger is increasing basic fuel consumption by 5%.
#   If the air conditioner is ON true, its increasing total (not basic) fuel consumption by 10%.
#
#   Examples
# - total_distance(70.0, 7.0, 0, false) ➞ 1000.0
# - total_distance(36.1, 8.6, 3, true) ➞ 331.8
# - total_distance(55.5, 5.5, 5, false) ➞ 807.3
#
# Notes
# - fuel and fuel_usage are always greater than 1.
#   - passengers are always greater or equal to 0.
#   - Round your answer to the nearest tenth.

def total_distance(fuel, fuel_usage, passengers, air_con)

  air = 0.0
  air = 0.10 if air_con

  basic_usage = fuel_usage / 100
  basic_usage = (fuel_usage + (fuel_usage * (0.05 * passengers))) / 100 if passengers.positive?

  (fuel / (basic_usage + (basic_usage * air))).round(1)

end

puts total_distance(30.0, 3.0, 0, false) == 1000.0
puts total_distance(50.0, 7.0, 3, true) == 564.7
puts total_distance(36.1, 8.6, 3, true) == 331.8
puts total_distance(71.9, 12.1, 1, false) == 565.9
puts total_distance(11.0, 11.0, 0, false) == 100.0
puts total_distance(55.5, 5.5, 5, false) == 807.3
puts total_distance(300.0, 25.0, 11, true) == 703.8