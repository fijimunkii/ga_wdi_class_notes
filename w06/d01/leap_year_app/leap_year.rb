class LeapYear

  attr_reader :year

  def initialize(year)
    @year = year
  end

  def is_leapyear?
    if (@year % 4) == 0
      if (@year % 400) == 0
        return true
      elsif (@year % 100) == 0
        return false
      end
      return true
    else
      return false
    end
  end

end
