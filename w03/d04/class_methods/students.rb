class Student

  attr_accessor :name, :gender
  attr_reader :is_muggle

  def save
    connection = PG.connect(:dbname => 'hp_db', :host => 'localhost')
    sql = "INSERT INTO students (name, gender, is_muggle) VALUES ('#{@name}', '#{@gender}', #{@is_muggle});"
    connection.exec(sql)
    connection.close
    "#{@name} has been saved to the database."
  end

  def self.say_cause
    "We are Hogwarts, and we are fighting the dark lord!"
  end

  def self.who_am_i
    "I am the factory that makes hogwarts students"
  end

  def initialize(name, gender, is_muggle)
    @name = name #string
    @gender = gender #string
    @is_muggle = is_muggle #boolean
  end

  def say_cause
    "I am #{@name} and I am fighting the dark lord!"
  end

end
