# Easy - Calculate the Shortest Distance Between Two Points
# Create a function that takes a string of four numbers. These numbers represent two separate points on a graph
# known as the x-axis (horizontal axis) and y-axis (vertical axis).
# The order of coordinates in the string corresponds as follows: "x1,y1,x2,y2"
# Calculate the distance between x and y.
# Examples
# shortest_distance("1,1,2,1") ➞ 1
# shortest_distance("1,1,3,1") ➞ 2
# shortest_distance("-5,1,3,1") ➞ 8
# shortest_dtance("-5,2,3,1") ➞ 8.06
# Notes
# All floats fixed to two decimal places (e.g. 2.34).

def shortest_distance(txt)
  points = txt.split(",").map(&:to_i)
  Math.sqrt(((points[2] - points[0])**2) + ((points[3] - points[1])**2)).round(2)
end

puts shortest_distance('1,1,2,1') == 1
puts shortest_distance('1,1,3,1') == 2
puts shortest_distance('-5,1,3,1') == 8
puts shortest_distance('-5,2,3,1') == 8.06
puts shortest_distance('18174,773931,851747,490653') == 880392.17
puts shortest_distance('737017,82252,882429,883228') == 814068.3
puts shortest_distance('700230,523734,877217,172766') == 393068.61
puts shortest_distance('354972,19774,976623,664356') == 895508.75
puts shortest_distance('587568,609626,654834,18784') == 594658.71
puts shortest_distance('66662,790481,873587,545905') == 843175.77
puts shortest_distance('332500,825806,905569,98242') == 926151.96
puts shortest_distance('699436,718399,148249,268862') == 711259.88