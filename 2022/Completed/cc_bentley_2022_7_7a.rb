# Medium - Pages in a Book
#
# Suppose that you add all of the page numbers in a book. If the total is 21, the book could only have 6 pages because 1 + 2 + 3 + 4 + 5 + 6 = 21.
# If I had said the total were 25, that would be impossible because the next number in the series is 28 (21 + 7).
#
# Create a function that, given the total number of pages as an argument, returns true if it is a valid total and false if it is not.
# Can you devise a solution that is more efficient than simply adding consecutive integers as I did above?
#
# Examples
# pages_in_book(5) ➞ false
# pages_in_book(4005) ➞ true
# pages_in_book(9453) ➞ true

def pages_in_book(total)
  count = 0
  res = 0

  while res < total
    res += count
    count += 1
  end

  res == total

end

puts pages_in_book(5) == false
puts pages_in_book(4005) == true
puts pages_in_book(9453) == true
puts pages_in_book(9474) == false
puts pages_in_book(125250) == true
puts pages_in_book(920046) == true
