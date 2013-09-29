class String
	def good_morning
		yield("good morning #{self}")
	end
end

def say(name)
	%x(say #{name})
end

def say_good_morning(name)
	name.good_morning do |x|
		say(x)
	end
end

class Array
	def my_own_each_method
		self.length.times do |x|
			yield (self[x])
		end
	end
end

names = ["harry", "jon", "matt"]

names.my_own_each_method do |x|
	say_good_morning(x)
end