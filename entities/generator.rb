class Generator
  def generate_authors
    authors = []
    4.times { authors.push(Author.new(Faker::Book.author, Faker::Lorem.paragraph)) }
    authors
  end

  def generate_books
    books = []
    3.times { books.push(Book.new(Faker::Book.title, generate_authors.sample)) }
    books
  end

  def generate_orders
    orders = []
    5.times { orders.push(Order.new(generate_books.sample, generate_readers.sample, Time.now)) }
    orders
  end

  def generate_readers
    readers = []
    5.times do
      readers.push(Reader.new(name: Faker::Name.name, email: Faker::Internet.email,
                              city: Faker::Address.city, street: Faker::Address.street_name,
                              house: Integer(Faker::Address.building_number)))
    end
    readers
  end
end
