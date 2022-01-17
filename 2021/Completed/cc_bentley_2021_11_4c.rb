# Medium - Christmas Tree
# Write a function to create a Christmas tree based on height h.
# Examples
# tree(1) ➞ [
# "#"
# ]
# tree(2) ➞ [
# " # ",
# "###"
# ]
# tree(5) ➞ [
# " # ",
# " ### ",
# " ##### ",
# " ####### ",
# "#########"
# ]
# tree(0) ➞ []

def tree(h)
  tree = Array.new
  if h.eql?(0)
    tree
  else
    until h.eql?(0)
      tree.append('#'*h)
      h = h-1
    end
  end
  tree.reverse.inspect
end

puts tree(2)
# puts tree(1) == ["#"]
# puts tree(2) == [" # ", "###"]
# puts tree(5) == ["    #    ", "   ###   ", "  #####  ", " ####### ", "#########"]
# puts tree(0) == []