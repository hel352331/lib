module Statistics
  def most_popular_books(quantity = 1)
    @orders.group_by(&:book).sort_by { |__, order| -order.count }.first(quantity)
  end

  def top_reader(quantity = 1)
    @orders.group_by(&:reader).sort_by { |__, order| -order.count }.first(quantity)
  end

  def number_readers_of_popular_books(quantity = 3)
    uniq = @orders.uniq { |order| [order.book, order.reader] }
    list = uniq.group_by(&:book).sort_by { |__, order| -order.count }.first(quantity)
    list.map { |book_orders| book_orders.pop.count }
  end

end
