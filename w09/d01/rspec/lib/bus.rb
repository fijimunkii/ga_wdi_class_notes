class Bus

  def initialize
    @passengers = []
    @fares = 0
    @fare = 2.5
    @bank = 0
    @capacity = 20
  end

  def empty?
    self.size == 0
  end

  def contains?(passenger)
    @passengers.include?(passenger)
  end

  def add(passenger)
    if !self.contains?(passenger) && self.size < @capacity && passenger.balance >= @fare
      @passengers << passenger
      @fares += 1
      @bank += @fare
    end
  end

  def remove(passenger)
    @passengers.delete(passenger)
  end

  def size
    @passengers.count
  end

  def money
    @bank
  end

  def fares
    @fares
  end

  def fare
    @fare
  end

  def wheels
    "round and round"
  end


end
