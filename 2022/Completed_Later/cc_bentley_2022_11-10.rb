# Is It a Valid RGB(A) Color?
#
# Given an RGB(A) CSS color, determine whether its format is valid or not.
# Create a function that takes a string (e.g. "rgb(0, 0, 0)") and return true if it's format is correct, otherwise return false.
#
# Examples
# 	- valid_color("rgb(0,0,0)") ➞ true
# 	- valid_color("rgb(0,,0)") ➞ false
# 	- valid_color("rgb(255,256,255)") ➞ false
# 	- valid_color("rgba(0,0,0,0.123456789)") ➞ true
#
# Notes
# 	- Alpha is between 0 and 1.
# 	- There are a few edge cases (check out the Tests to know more).

def valid_color (color)
  if color.include?('256') || color =~ /10[1-9]%/
    false
  else
    color.match? /rgb\(\s?\d{1,3}+\%?\s?,\s?\d{1,3}+\%?\s?,\s?\d{1,3}+\%?\)\s?|rgba\(\s?\d{1,3}\s?,\s?\d{1,3}\s?,\s?\d{1,3}\s?,\s?(0+\.?|0*\.\d+|0*1(\.0*)?)\s?\)/
  end
  # rgbPercent = color.gsub('rgb', '').gsub('(', '').gsub(')', '').split(',').map(&:to_i)
  # rgb255 = color.gsub('rgb', '').gsub('(', '').gsub(')', '').split(',').reject(&:empty?).map(&:to_i)
  # rgba255 = color.gsub('rgba', '').gsub('(', '').gsub(')', '').split(',').reject(&:empty?).map(&:to_i)
  # valid_rgba = false
  #
  # rgbPercent.each do |i|
  #   valid_rgba = i.between?(0, 100)
  # end
  #
  # rgb255.each do |i|
  #   valid_rgba = i.between?(0, 255)
  # end
  #
  # rgba255.each do |i|
  #   valid_rgba = i.between?(0, 255)
  # end
  #
  # if valid_rgba
  #   color.match? /rgb\(\s?\d{1,3}+\%?\s?,\s?\d{1,3}+\%?\s?,\s?\d{1,3}+\%?\)\s?|rgba\(\s?\d{1,3}\s?,\s?\d{1,3}\s?,\s?\d{1,3}\s?,\s?(0+\.?|0*\.\d+|0*1(\.0*)?)\s?\)/
  # end
end

# True Tests
puts valid_color('rgb(0,0,0)') == true
puts valid_color('rgb(255,255,255)') == true
puts valid_color('rgba(0,0,0,0)') == true
puts valid_color('rgba(255,255,255,1)') == true
puts valid_color('rgba(0,0,0,0.123456789)') == true
puts valid_color('rgba(0,0,0,.8)') == true
puts valid_color('rgba(	0 , 127	, 255 , 0.1	)') == true
puts valid_color('rgb(0%,50%,100%)') == true

# False Tests
puts valid_color('rgb(0,,0)') == false
puts valid_color('rgb (0,0,0)') == false
puts valid_color('rgb(0,0,0,0)') == false
puts valid_color('rgba(0,0,0)') == false
puts valid_color('rgb(-1,0,0)') == false
puts valid_color('rgb(255,256,255)') == false
puts valid_color('rgb(100%,100%,101%)') == false
puts valid_color('rgba(0,0,0,-1)') == false
puts valid_color('rgba(0,0,0,1.1)') == false