require_relative 'library'

library = Library.new(name)
#shelf, Array

b1 = Book.new(10.43, "This book rocks!", "THE TITLE", "THE AUTHOR")
b2 = Book.new(43232, "This book rocks!", "afwe", "TawfeOR")


b1_id = library.add_book(b1)

# Read Book
library.get_book(b2_id)

# Destroy book
library.burn_book(b2_id)

# Read all books
libary.get_all_books

### CRUD ###
## Create
## Read
## Update
## Destroy
############


