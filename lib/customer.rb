class Customer

  def place_order(takeaway, order, payment)
    takeaway.process(order, payment)
  end

end
