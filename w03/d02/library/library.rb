require_relative 'book'

class Library

  attr_accessor :name

  def initialize(name)
    @name = name
    @bookshelf = Array.new
  end

  def add_book(book)
    @bookshelf.push(book)
    @bookshelf.index(book)
  end

  def get_book(book_id)
   @bookshelf[book_id]
  end

  def get_all_books
    @bookshelf.compact
  end


  def remove_book(book_id)
    book = @bookshelf[book_id]
    @bookshelf[book_id] = nil
    book
  end

  def burn_book(book_id)
    @bookshelf[book_id] = nil
  end

end
