class Actor

	attr_reader :birth_year, :country_of_origin
	attr_accessor :name, :biography

	def initialize(name, birth_year, country_of_origin)
		@name = name
		@birth_year = birth_year
		@country_of_origin = country_of_origin
	end

end