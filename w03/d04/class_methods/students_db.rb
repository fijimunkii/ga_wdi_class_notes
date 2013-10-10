require 'pg'

class StudentsDb

  def self.run_in_connection
    connection = PG.connect(:dbname => 'hp_db', :host => 'localhost')
    yield connection
    connection.close
  end

  def self.insert_student(student_object)
    name = student_object.name
    gender = student_object.gender
    is_muggle = student_object.is_muggle
    sql = "INSERT INTO students (name, gender, is_muggle) VALUES ('#{name}', '#{gender}', #{is_muggle});"
    run_in_connection do |conn|
      conn.exec(sql)
    end
  end

  def self.all
    sql = "SELECT * FROM students;"
    run_in_connection do |conn|
      @response = conn.exec(sql)
    end

    @response.entries
  end

  def self.get_student(id)
    sql = "SELECT * FROM students WHERE id = #{id}"
    run_in_connection do |conn|
      @response = conn.exec(sql)
    end

    @response.entries
  end

  def self.burn_student(id)
    sql = "DELETE FROM students WHERE id = #{id}"
    run_in_connection do |conn|
      conn.exec(sql)
    end
    "The burning witch cast a curse on you with dieing words.."
  end

end
