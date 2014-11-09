class Takeaway

  attr_reader :menu

  def initialize
    @menu = nil
  end

  def add_menu(menu)
    @menu = menu
  end

  def create(content, order, payment)
    check_order(order, payment)
    confirmation = content.new
    confirmation.send_text(order)
  end

  def check_order(order, payment)
    raise "Your payment was incorrect." if !payment_correct?(order, payment)
    raise "Your order was invalid." if !dishes_available?(order)
  end

  def payment_correct?(order, payment)
    order.total == payment
  end

  def dishes_available?(order)
    order.contents & menu.dishes == order.contents.uniq
  end

end