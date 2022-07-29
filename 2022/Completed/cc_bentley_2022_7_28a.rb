# Medium - Book Shelf
#
# Create a Book class that has two accessors:
# 	- title
# 	- author
#
# and two additional methods:
# 	- A method named get_title that returns: "Title: " + the instance title.
# 	- A method named get_author that returns: "Author: " + the instance author.
#
# and instantiate this constructor by creating 3 new books:
# 	- Pride and Prejudice - Jane Austen (pp)
# 	- Hamlet - William Shakespeare (h)
# 	- War and Peace - Leo Tolstoy (wp)
# The name of the new hash instances pp, h, and wp, respectively.
#
# For instance, if I instantiated the following book:
# Harry Potter - J.K. Rowling (hp)
#
# I would get the following properties and methods:
# Examples
# 	- hp.title ➞ "Harry Potter"
# 	- hp.author ➞ "J.K. Rowling"
# 	- hp.get_title ➞ "Title: Harry Potter"
# 	- hp.get_author ➞ "Author: J.K. Rowling"
# Notes
# Remember, after you've finished writing the class, you must instantiate it through the creation of new instances.

class Book
  attr_reader :title, :author

  def initialize(title, author)
    @title = title
    @author = author
  end

  def get_title
    "Title: #{@title}"
  end

  def get_author
    "Author: #{@author}"
  end

end

pp = Book.new('Pride and Prejudice', 'Jane Austen')
h = Book.new('Hamlet', 'William Shakespeare')
wp = Book.new('War and Peace', 'Leo Tolstoy')

puts pp.title == "Pride and Prejudice"
puts pp.author == "Jane Austen"
puts pp.get_title == 'Title: Pride and Prejudice'
puts pp.get_author == "Author: Jane Austen"

puts h.title == "Hamlet"
puts h.author == "William Shakespeare"
puts h.get_title == "Title: Hamlet"
puts h.get_author == "Author: William Shakespeare"

puts wp.title == "War and Peace"
puts wp.author == "Leo Tolstoy"
puts wp.get_title == "Title: War and Peace"
puts wp.get_author == "Author: Leo Tolstoy"