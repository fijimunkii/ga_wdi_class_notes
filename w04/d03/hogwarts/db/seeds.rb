House.delete_all
Student.delete_all
Spell.delete_all

h1 = House.create(name: 'Gryffindor')
h2 = House.create(name: 'Slytherin')

s1 = Student.create(name: 'Harry Potter')
s2 = Student.create(name: 'Hermione Granger')
s3 = Student.create(name: 'Draco Malfoy')

h1.students << s1 << s2
h2.students = [s3]

sp1 = Spell.create(:name => 'Accio')
sp2 = Spell.create(:name => 'Wingardium Leviosa')
sp3 = Spell.create(:name => 'Lumos')
sp4 = Spell.create(:name => 'Avada Kedavra')

s1.spells << sp1 << sp2 << sp3
s2.spells = [sp1, sp2, sp3]
s3.spells.push(sp4)
