require './config/autoload.rb'

entities = Generator.new
lib = Library.new

author = entities.generate_authors
author.each { |value| lib.add(value) }
book = entities.generate_books
book.each { |value| lib.add(value) }
reader = entities.generate_readers
reader.each { |value| lib.add(value) }
order = entities.generate_orders
order.each { |value| lib.add(value) }

lib.store_data

puts lib.show_most_popular_books(1)
puts lib.show_top_reader(1)
puts lib.show_three_tops(3)
