# Medium - Simplifying to Simplest Ratio
#
# Create a function which simplifies a given fraction into its simplest ratio. Return the fraction as a string.
#
# Examples
# simplify_frac("2/4") ➞ "1/2"
# simplify_frac("15/25") ➞ "3/5"
# simplify_frac("4/9") ➞ "4/9"
#
# Notes
# Fractions are given as strings.
# Return the same fraction if it is already in its simplified ratio (see example #3).
#
def simplify_frac(f)
  numerator = f.split('/')[0].to_i
  denominator = f.split('/')[1].to_i

  Rational(numerator, denominator).to_s
end

puts simplify_frac("2/4") == "1/2"
puts simplify_frac("15/25") == "3/5"
puts simplify_frac("4/9") == "4/9"
puts simplify_frac("15/48") == "5/16"
puts simplify_frac("8/41") == "8/41"
puts simplify_frac("13/94") == "13/94"
puts simplify_frac("9/95") == "9/95"
puts simplify_frac("8/69") == "8/69"
puts simplify_frac("4/31") == "4/31"
puts simplify_frac("13/8") == "13/8"
puts simplify_frac("7/86") == "7/86"
puts simplify_frac("19/75") == "19/75"
puts simplify_frac("10/44") == "5/22"
puts simplify_frac("1/93") == "1/93"
puts simplify_frac("17/23") == "17/23"
puts simplify_frac("20/80") == "1/4"
puts simplify_frac("12/13") == "12/13"
puts simplify_frac("8/51") == "8/51"
puts simplify_frac("8/29") == "8/29"
puts simplify_frac("20/41") == "20/41"
puts simplify_frac("2/75") == "2/75"
puts simplify_frac("20/24") == "5/6"
puts simplify_frac("13/22") == "13/22"
puts simplify_frac("4/15") == "4/15"
puts simplify_frac("9/29") == "9/29"
puts simplify_frac("17/83") == "17/83"
puts simplify_frac("19/65") == "19/65"
puts simplify_frac("6/58") == "3/29"
puts simplify_frac("5/18") == "5/18"
puts simplify_frac("9/51") == "3/17"
puts simplify_frac("19/93") == "19/93"
puts simplify_frac("2/97") == "2/97"
puts simplify_frac("4/63") == "4/63"
puts simplify_frac("3/10") == "3/10"
puts simplify_frac("11/39") == "11/39"
puts simplify_frac("2/28") == "1/14"
puts simplify_frac("10/51") == "10/51"
puts simplify_frac("12/76") == "3/19"
puts simplify_frac("15/43") == "15/43"
puts simplify_frac("18/74") == "9/37"
puts simplify_frac("7/48") == "7/48"
puts simplify_frac("2/7") == "2/7"
puts simplify_frac("20/73") == "20/73"
puts simplify_frac("6/24") == "1/4"
puts simplify_frac("5/67") == "5/67"
puts simplify_frac("10/15") == "2/3"
puts simplify_frac("10/95") == "2/19"
puts simplify_frac("19/100") == "19/100"
puts simplify_frac("17/80") == "17/80"
puts simplify_frac("1/54") == "1/54"
puts simplify_frac("5/53") == "5/53"
puts simplify_frac("1/50") == "1/50"
puts simplify_frac("12/41") == "12/41"
