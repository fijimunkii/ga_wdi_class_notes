require_relative("product")

class Book < Product

  attr_accessor :title, :author

  def initialize(price, description, title, author)
    super(price, description)
    @title = title
    @author = author
  end

  def to_hash
    super.merge({ :title => @title, :author => @author })
  end

end
