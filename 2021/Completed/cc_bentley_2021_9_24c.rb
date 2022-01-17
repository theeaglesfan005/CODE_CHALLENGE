# Very Hard - String Incrementer
# Write a function which increments a string to create a new string.
# If the string ends with a number, the number should be incremented by 1.
# If the string doesn't end with a number, 1 should be added to the new string.
# If the number has leading zeros, the amount of digits should be considered.
#
# Examples
# increment_string("foo") ➞ "foo1"
# increment_string("foobar0009") ➞ "foobar0010"
# increment_string("foo099") ➞ "foo100"

def increment_string(str)
  n = str.index(/\d+\z/)
  if n.nil?
    str + '1'
  else
    string_begin = str[0, n]
    string_end = str[n..-1]

    ((string_end.to_i) + 1).to_s
    new_end = string_end.succ

    string_begin + new_end
  end

end

puts increment_string('foo') == 'foo1'
puts increment_string('foobar01002') == 'foobar01003'
puts increment_string('foobar00599') == 'foobar00600'
puts increment_string('foo099') == 'foo100'
puts increment_string('foo09999') == 'foo10000'