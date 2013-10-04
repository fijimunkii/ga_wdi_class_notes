class Director

	attr_reader :birth_year
	attr_accessor :name, :email, :imdb_rating, :best_movie

	def initialize(name, birth_year)
		@name = name
		@birth_year = birth_year
	end

end