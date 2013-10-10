require_relative 'person'

class Director < Person

	attr_accessor :imdb, :most_known_movie

	def work
		super
		`say no foam in my orange mocha frappacheeno`
	end

end