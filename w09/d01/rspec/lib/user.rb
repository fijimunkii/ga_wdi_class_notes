class User

  def initialize(options)
    @name = options[:name]
    @job = options[:job]
    @balance = 0
  end

  def name
    @name
  end

  def balance
    @balance
  end

  def job
    @job
  end

  def work
    @balance += 5
  end

end
