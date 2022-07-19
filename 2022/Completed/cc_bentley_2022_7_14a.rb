# Medium - Coaxial Cable Impedance
#
# Create a function that takes the values dd (Dielectric Outer Diameter), dc (Inner Conductor Diameter) and er (Dielectric Constant) and calculates the Coaxial Cable Impedance.
#
# Examples
# - impedance_calculator(20.7, 2, 4) ➞ 70.0
# - impedance_calculator(5.3, 1.2, 2.2) ➞ 60.0
# - impedance_calculator(4.48, 1.33, 2.2) ➞ 50.0
#
# Notes
# - https://en.wikipedia.org/wiki/Coaxial_cable
# - https://www2.irb.hr/korisnici/stipcevi/ele/coaxweb/index.html
# - https://www.everythingrf.com/rf-calculators/coaxial-cable-calculator
# - https://www.geeksforgeeks.org/ruby-math-log10-function/

def impedance_calculator(dd, dc, er)
  ((138 * Math.log10(dd / dc)) / Math.sqrt(er)).round(1)
end

puts impedance_calculator(5.3, 1.2, 2.2) == 60.0
puts impedance_calculator(4.58, 1.33, 2.2) == 50.0
puts impedance_calculator(20.7, 2, 4) == 70.0
puts impedance_calculator(40, 2.05, 2.2) == 120.0
puts impedance_calculator(25.6, 4, 2.2) == 75.0
