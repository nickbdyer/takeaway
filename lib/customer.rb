class Customer

  def place_order(takeaway, order, payment, content)
    takeaway.create(content, order, payment)
  end

end