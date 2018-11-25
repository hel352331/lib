class Order
  include Validator
  attr_reader :reader, :book

  def initialize(reader, book, date = Time.now)
    validate(reader, book)
    @reader = reader
    @book = book
    @date = date
  end

  private

  def validate(reader, book)
    check_class(reader, Reader)
    check_class(book, Book)
  end
end
