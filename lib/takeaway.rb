class Takeaway

  attr_reader :menu

  def initialize
    @menu = nil
  end

  def add_menu(menu)
    @menu = menu
  end

  def create(content, order)
    confirmation = content.new(order)
    confirmation.send_text(order)
  end

  def check_order(order, payment)
  end

  def payment_correct?(order, payment)
    order.total == payment
  end

  def dishes_available?(order)
    order.contents & menu.dishes == order.contents.uniq
  end

end