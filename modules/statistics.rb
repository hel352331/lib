module Statistics
  def most_popular_books(orders, quantity = 1)
    sort_by(orders, :book, quantity)
  end

  def top_reader(orders, quantity = 1)
    sort_by(orders, :reader, quantity)
  end

  def number_readers_of_popular_books(orders, quantity = 3)
    popular_books = most_popular_books(orders, quantity)
    orders.select { |order| popular_books.include? order.book }.uniq.count
  end

  private

  def sort_by(orders, by, quantity)
    orders.group_by(&by).sort_by { |_, order| -order.count }.first(quantity).to_h.keys
  end
end
