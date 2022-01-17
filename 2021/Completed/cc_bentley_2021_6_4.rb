# Create a function which adds spaces before every capital in a word. Uncapitalize the whole string afterwards.
#
# Examples:
# cap_space("helloWorld") ➞ "hello world"
# cap_space("iLoveMyTeapot") ➞ "i love my teapot"
# cap_space("stayIndoors") ➞ "stay indoors"
#
# Notes:
# The first letter will stay uncapitalized.

def cap_space(str);
str_array = str.split('')

str_array.each_with_index do |item|
  if item == item.upcase
    item.gsub! item, ' '+item.downcase
  end
end

str_array.join
end

# make these return true
puts cap_space("helloWorld") == "hello world"
puts cap_space("iLoveMyTeapot") == "i love my teapot"
puts cap_space("stayIndoors") == "stay indoors"