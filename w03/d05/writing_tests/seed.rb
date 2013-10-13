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

a1 = Artist.new(
  :name => "Van Gogh",
  :nationality => "Netherlands",
  :dob => 1853
)
a1.save

p1 = Painting.new(
  :title => "Starry Night",
  :year => 1889,
  :url => "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg/1280px-Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg",
  :artist_id => a1.id
)
p1.save

a2 = Artist.new(
  :name => "Harry Potter",
  :nationality => "England",
  :dob => 1980
)
a2.save

p2 = Painting.new(
  :title => "The Elves",
  :year => 1999,
  :url => "https://farm6.staticflickr.com/5293/5398634442_996734bf3c_o.jpg",
  :artist_id => a2.id
)
p2.save

p3 = Painting.new(
  :title => "Lord Voldemort",
  :year => 2000,
  :url => "http://fc09.deviantart.net/fs71/i/2011/201/9/6/voldemort_vs_the_doctor_by_exrayne-d412ptq.jpg",
  :artist_id => a2.id
)
p3.save
