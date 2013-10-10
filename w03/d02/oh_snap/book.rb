require_relative 'product'

class Book < Product
  attr_accessor :title, :author, :published_on
end
