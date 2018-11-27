# frozen_string_literal: true

class Library
  include Storage
  include ValidatorErrors
  include Statistics
  attr_reader :authors, :readers, :orders, :books

  def initialize
    @authors = []
    @books = []
    @readers = []
    @orders = []
    load_store
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

  def show_most_popular_books
    most_popular_books(@orders)
  end

  def show_top_reader
    top_reader(@orders)
  end

  def show_three_tops
    number_readers_of_popular_books(@orders)
  end

  def load_store
    return unless load

    param = load
    @books = param[:books]
    @authors = param[:authors]
    @orders = param[:orders]
    @readers = param[:readers]
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
