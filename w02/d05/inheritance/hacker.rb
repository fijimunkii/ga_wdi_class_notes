require_relative 'person'

class Hacker < Person

	def work
		`say I am hacking away on my project.`
	end

end