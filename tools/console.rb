require_relative '../config/environment.rb'

vangogh = Artist.new("Van Gogh", 14)
rembrandt = Artist.new("Rembrandt", 16)
picasso = Artist.new("Picasso", 25)

louvre = Gallery.new("Louvre", "Paris")
modern_art = Gallery.new("Museum of Modern Art", "New York")
british_museum = Gallery.new("The British Museum", "London")
gallery_of_art = Gallery.new("National Gallery of Art", "Washington D.C.")

starry_night = Painting.new("Starry Night", 230000, vangogh, louvre)
potato_eaters = Painting.new("The Potato Eaters", 2334, vangogh, modern_art)
night_watch = Painting.new("The Night Watch", 4333, rembrandt, british_museum)
jewish_bride = Painting.new("The Jewish Bride", 6654, rembrandt, gallery_of_art)
guernica = Painting.new("Guernica", 23111, picasso, louvre)
weeping_woman = Painting.new("The Weeping Woman", 9889, picasso, modern_art)

binding.pry

puts "Bob Ross rules."
