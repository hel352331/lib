# frozen_string_literal: true

class Library
  include Storage
  include ValidatorErrors
  attr_reader :authors, :readers, :orders, :books

  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
  end

  def add(*data)
    data.each do |element|
      case element
      when Author then @authors.push(element)
      when Book then @books.push(element)
      when Reader then @readers.push(element)
      when Order then @orders.push(element)
      else raise UndefinedClassError
      end
    end
  end

  def store_data
    save(data)
  end

  private

  def data
    {
      authors: @authors,
      books: @books,
      readers: @readers,
      orders: @orders
    }
  end
end
