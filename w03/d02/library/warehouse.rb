class Warehouse

  def initialize(name)
    @name = name
    @storage = Array.new
  end

  def add_computer(computer)
    @storage << computer
    @storage.index(computer)
  end

  def see_computer(computer_id)
    @storage[computer_id]
  end

  def see_all_computers
    @storage.compact
  end

  def remove_computer(computer_id)
    computer = @storage[computer_id]
    @storage[computer_id] = nil
    computer
  end

  def burn_computer(computer_id)
    @storage[computer_id] = nil
    return "sizzle"
  end

end
