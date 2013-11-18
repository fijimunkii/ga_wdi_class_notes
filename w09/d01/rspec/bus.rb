class Bus

  def initialize
    @passengers = []
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
    end
  end

  def remove(passenger)
    @passengers.delete(passenger)
  end

  def size
    @passengers.count
  end


end
