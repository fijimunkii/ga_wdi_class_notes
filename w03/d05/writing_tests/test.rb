require 'pg'
require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "fijimunkii",
  :password => "",
  :database => "moma_db"
)

class Artist < ActiveRecord::Base
  has_many :paintings
end

class Painting < ActiveRecord::Base
  belongs_to :artist
end

# I want to get the total number of artsts in the database
output = Artist.count

# I think that the number of artists should be 2
p output == 2

# I want to get all of the artists back in an array
output = Artist.all

# and have a size of 2
p output.size == 2

# I want to get the total number of paintings in the database
output = Painting.count

# I think that the number of paintings should be 3
p output == 3

# I want to get all of the paintings back in an array
output = Painting.all

# and have a size of 3
p output.size == 3

# I want to return the artist with an id of 2
output = Painting.find(2)
p output.id == 2

# I want to return the artist with the name "Van Gogh"
output = Artist.find_by(:name => "Van Gogh")
p output.name == "Van Gogh"

# I want to return all the artists from England
output = Artist.find_by(:nationality => "England")
p output.name == "Harry Potter"

# I want to return the painting with an id of 1
output = Painting.find(1)
p output.title == "Starry Night"

# I want to return the painting with a title of "Lord Voldemort"
output = Painting.find_by(:title => "Lord Voldemort" )
p output.title == "Lord Voldemort"

# I want to return the artist of the above painting
output = output.artist
p output.name == "Harry Potter"

# I want to return the image url for the painting with the title "Starry Night"
output = Painting.find_by(:title => "Starry Night").url
p output == "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1280px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg"

# I want to return all the paintings that "Harry Potter" painted
output = Artist.find_by(:name => "Harry Potter").paintings
p output.size == 2

# I want to return an array of image urls for all the paintings that "Harry Potter" painted
output = output.map do |painting|
  painting.url
end
p output.class == Array

# I want to return the artist of "Starry Night"
output = Painting.find_by(:title => "Starry Night").artist
p output.name == "Van Gogh"

# I want to change Van Gogh's nationality to USA
output = Artist.find_by(:name => "Van Gogh")
output.nationality = "USA"
output.save

output = Artist.find_by(:nationality => "USA")
p output.name == "Van Gogh"

# I want to change "Starry Night" to be one of Harry Potter's paintings
output = Painting.find_by(:title => "Starry Night")
output.artist_id = Artist.find_by(:name => "Harry Potter").id
output.save

output = Painting.find_by(:title => "Starry Night")
p output.artist.name == "Harry Potter"





