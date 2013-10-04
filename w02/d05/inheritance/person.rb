class Person

	attr_accessor :name, :email

	def initialize(name, email)
		@name = name
		@email = email
	end

	def work
		`say I am doing some boring generic work`
	end

end