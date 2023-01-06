# How Many Unique Styles?
#
# There are many different styles of music and many albums exhibit multiple styles.
# Create a function that takes a list of musical styles from albums and returns how many styles are unique.
#
# Examples
# unique_styles([
#   "Dub,Dancehall",
#   "Industrial,Heavy Metal",
#   "Techno,Dubstep",
#   "Synth-pop,Euro-Disco",
#   "Industrial,Techno,Minimal"
# ]) ➞ 9
#
# unique_styles([
#   "Soul",
#   "House,Folk",
#   "Trance,Downtempo,Big Beat,House",
#   "Deep House",
#   "Soul"
# ]) ➞ 7

def unique_styles(albums)
  albums.join(',').split(',').uniq.count
end

puts unique_styles(["Dub,Dancehall", "Industrial,Heavy Metal", "Techno,Dubstep", "Synth-pop,Euro-Disco", "Industrial,Techno,Minimal"]) == 9
puts unique_styles(["Soul", "House,Folk", "Trance,Downtempo,Big Beat,House", "Deep House", "Soul"]) == 7
puts unique_styles(["Black Metal,Avantgarde", "Funk", "Deep House,House", "Big Band", "Punk"]) == 7
puts unique_styles(["Funk", "Funk", "Funk", "Funk", "Funk",]) == 1
