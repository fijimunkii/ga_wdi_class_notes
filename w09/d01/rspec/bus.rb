class Bus

  def initialize
    @passengers = []
    @fares = 0
    @bank = 0
  end

  def empty?
    self.size == 0
  end

  def contains?(passenger)
    @passengers.include?(passenger)
  end

  def add(passenger)
    if !self.contains?(passenger)
      @passengers << passenger
      @fares += 1
      @bank += 2.5
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


end
