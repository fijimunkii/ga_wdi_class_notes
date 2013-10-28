class Weather

  attr_reader :type
  attr_accessor :temp

  def initialize(type)
    @type = type.downcase
  end

  def type_conv
    # if self.type == fahrenheit
    #   return (self.temp.to_f - 32) * 5 / 9
    case @type
    when 'celcius'
      (@temp.to_f * 9 / 5) + 32
    when 'fahrenheit'
      @temp.to_f
    end
  end

  def dress
    case
    when type_conv < 0
      'Stay inside!'
    when type_conv.between?(0,30)
      'Bundle up!'
    when type_conv.between?(30,60)
      "It's cold, wear long sleeves"
    when type_conv > 60
      "Wear short sleeves"
    end
  end

end
