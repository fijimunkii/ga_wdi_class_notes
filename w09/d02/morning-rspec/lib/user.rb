class User

  def initialize(options)
    @gender = options[:gender]
    @first_name = options[:first_name]
    @last_name = options[:last_name]
    @age = options[:age]
    @married = options[:married]
    @abilities = []
  end

  def gender
    @gender
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def age
    @age
  end

  def married?
    @married
  end

  def abilities
    if @age >= 16
      @abilities << :drive unless @abilities.include?(:drive)
    end
    if @age >= 18
      @abilities << :vote unless @abilities.include?(:vote)
    end
    if @age >= 25
      @abilities << :rent_car unless @abilities.include?(:rent_car)
    end
    if @age >= 35
      @abilities << :president unless @abilities.include?(:president)
    end

    @abilities
  end

  def formal_name
    if @gender == "female"
      if @age >= 20
        if @married
          prefix = "Mrs. "
        else
          prefix = "Ms. "
        end
      else
        prefix = ""
      end
    elsif @gender == "male"
      if @age >= 20
        prefix = "Mr. "
      else
        prefix = ""
      end
    end
    "#{prefix }#{@first_name} #{@last_name}"
  end

end
