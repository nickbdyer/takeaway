class Customer

  def place_order(takeaway, order, payment)
    takeaway.create(order, payment)
  end

end