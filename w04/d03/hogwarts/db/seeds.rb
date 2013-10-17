House.delete_all
Student.delete_all

h1 = House.create(name: 'Gryffindor')
h2 = House.create(name: 'Slytherin')

s1 = Student.create(name: 'Harry Potter')
s2 = Student.create(name: 'Hermione Granger')
s3 = Student.create(name: 'Draco Malfoy')

h1.students << s1 << s2
h2.students = [s3]
