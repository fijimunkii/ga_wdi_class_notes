class Person

	def initialize(name, gender, hair_color, eye_color)
		@name = name
		@gender = gender
		@hair_color = hair_color
		@eye_color = eye_color
	end

	def age=(age)
		@age = age
	end

	def age
		@age
	end

	def gender=(gender)
		@gender = gender
	end

	def gender
		@gender
	end

	def name
		@name
	end

	def hair_color=(hair_color)
		@hair_color = hair_color
	end

	def hair_color
		@hair_color
	end

	def eye_color=(eye_color)
		@eye_color = eye_color
	end

	def needs_glasses?=(tf)
		@needs_glasses = tf #boolean
	end

	def needs_glasses?
		@needs_glasses
	end

end