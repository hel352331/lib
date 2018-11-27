module Statistics
  def most_popular_books(orders, quantity = 1)
    @orders.group_by(&:book).sort_by { |__, order| -order.count }.first(quantity)
  end

  def top_reader(quantity = 1)
    @orders.group_by(&:reader).sort_by { |__, order| -order.count }.first(quantity)
  end
end
