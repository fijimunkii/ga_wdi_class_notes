class Weather

  attr_reader :type, :temp, :type_conv

  def initialize(type)
    @type = type.downcase
  end

  def type_conv
    # if self.type == fahrenheit
    #   return (self.temp.to_f - 32) * 5 / 9
    if @type == 'celcius'
      return (@temp.to_f * 9 / 5) + 32
    else
      return @temp.to_f
    end
  end

  def temp=(temperature)
    @temp = temperature
  end

  def dress
    case
    when self.type_conv < 0
      'Stay inside!'
    when self.type_conv < 30 && self.type_conv >= 0
      'Bundle up!'
    when self.type_conv >= 30 && self.type_conv <= 60
      "It's getting cold, wear long sleeves"
    when self.type_conv > 60
      "Wear short sleeves"
    end
  end

end
