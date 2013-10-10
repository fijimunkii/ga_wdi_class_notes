require_relative("students")
require_relative("students_db")

harry = Student.new("Harry", "male", false) #creates a new student with the name "harry", gender "male" and muggle status being false

p StudentsDb.insert_student(harry) #insert the student into my database

p StudentsDb.all # array of hashes of all the students i've inserted

ginny = Student.new("Ginny", "female", false)

p ginny.save
