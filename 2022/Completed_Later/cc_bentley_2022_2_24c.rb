# Hard - Money Formatting
#
# Given a number, return a string which is formatted into US Dollars and cents!
# Remember that:
# - You should round to two digits after the decimal point (even for integers).
# - Thousandths should be separated by commas.
#
# Examples
# - dolla_dolla_bills(10) ➞ "$10.00"
# - dolla_dolla_bills(1000000) ➞ "$1,000,000.00"
# - dolla_dolla_bills(-314159.2653) ➞ "-$314,159.27"
# - dolla_dolla_bills(-56.99) ➞ "-$56.99"
#
# Notes
# - There will be both negative and positive inputs.

def dolla_dolla_bills(money)
 ('%.2f' % money.round(2))
   .to_s.gsub(/^/, '$')
   .gsub('$-', '-$')
   .reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
end

puts dolla_dolla_bills(10) == "$10.00"
puts dolla_dolla_bills(31.4159) == "$31.42"
puts dolla_dolla_bills(-56.99) == "-$56.99"
puts dolla_dolla_bills(-0.008) == "-$0.01"
puts dolla_dolla_bills(0.05) == "$0.05"
puts dolla_dolla_bills(1000000) == "$1,000,000.00"
puts dolla_dolla_bills(-314159.2653) == "-$314,159.27"