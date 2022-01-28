# Easy - Get the File Extension
# Write a function that maps files to their extension names.
# Examples
# get_extension(["code.html", "code.css"])
# ["html", "css"]
# get_extension(["project1.jpg", "project1.pdf", "project1.mp3"])
# ["jpg", "pdf", "mp3"]
# get_extension(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"])
# ["rb", "cpp", "py", "js"]

def get_extension(arr)
  arr.map { |n| n.split('.')[-1] }
end

puts get_extension(["project1.jpg", "project1.pdf", "project1.mp3"]) == ["jpg", "pdf", "mp3"]
puts get_extension(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"]) == ["rb", "cpp", "py", "js"]
puts get_extension(["code.html", "code.css"]) == ["html", "css"]
puts get_extension(["minesweeper.java", "game.java", "my_project.java"]) == ["java", "java", "java"]