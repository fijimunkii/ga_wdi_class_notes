require_relative 'director'

d1 = Director.new("Tim Burton", "tim@burton.ai")

p d1
p d1.name
p d1.email

d1.imdb = 9
d1.most_known_movie = "Edward Scissorhands"

p d1.imdb
p d1.most_known_movie

d1.work