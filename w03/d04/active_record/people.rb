require 'active_record'
require 'pry'
require 'ap'
require 'faker'

ActiveRecord::Base.logger = Logger.new( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "fijimunkii",
  :password => "",
  :database => "people_db"
)

class User < ActiveRecord::Base
end

class Unicorn < ActiveRecord::Base
end

puts "How many users do you want to make?"
num_users = gets.chomp.to_i

num_users.times do

  u = User.new( { :name => Faker::Name.name } )
  u.save
  ap u

end

binding.pry
