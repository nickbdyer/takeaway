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



  # def create_new(content, customer)
  #   orders << content.new(customer)
  # end

  # def retrieve_order(customer)
  #   orders.find { |order| order.customer == customer }
  # end



end