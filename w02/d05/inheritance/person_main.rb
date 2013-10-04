require_relative 'person'

p1 = Person.new("Harrison", "harrisonpowers@gmail.com")

p p1.name
p p1.email

p1.name = "Harry"
p1.email = "harrison@harrypowers.it"

p p1.name
p p1.email