require_relative './config/autoload.rb'
lib = Library.new
author1 = Author.new(Faker::Book.author)
author2 = Author.new(Faker::Book.author)
author3 = Author.new(Faker::Book.author)
author4 = Author.new(Faker::Book.author)
author5 = Author.new(Faker::Book.author)
book1 = Book.new(Faker::Book.title, author1)
book2 = Book.new(Faker::Book.title, author2)
book3 = Book.new(Faker::Book.title, author3)
book4 = Book.new(Faker::Book.title, author4)
book5 = Book.new(Faker::Book.title, author5)
reader1 = Reader.new(
  name: Faker::Name.first_name, email: Faker::Internet.email,
  city: Faker::Address.city, street: Faker::Address.street_name,
  house: Faker::Number.between(1, 60)
)
reader2 = Reader.new(
  name: Faker::Name.first_name, email: Faker::Internet.email,
  city: Faker::Address.city, street: Faker::Address.street_name,
  house: Faker::Number.between(1, 60)
)
reader3 = Reader.new(
  name: Faker::Name.first_name, email: Faker::Internet.email,
  city: Faker::Address.city, street: Faker::Address.street_name,
  house: Faker::Number.between(1, 60)
)
reader4 = Reader.new(
  name: Faker::Name.first_name, email: Faker::Internet.email,
  city: Faker::Address.city, street: Faker::Address.street_name,
  house: Faker::Number.between(1, 10)
)
reader5 = Reader.new(
  name: Faker::Name.first_name, email: Faker::Internet.email,
  city: Faker::Address.city, street: Faker::Address.street_name,
  house: Faker::Number.between(1, 10)
)
order1 = Order.new(reader5, book2)
order2 = Order.new(reader3, book1)
order3 = Order.new(reader1, book2)
order4 = Order.new(reader2, book2)
order5 = Order.new(reader4, book2)
lib.add(
  author1, author2, author3, author4, author5,  book1, book2, book3, book4, book5,
  reader1, reader2, reader3, reader4, reader5, order1, order2, order3, order4,
  order5
)
puts order1
puts reader5
