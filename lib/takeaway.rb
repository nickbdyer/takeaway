class Takeaway

  attr_reader :menu
  attr_reader :orders

  def initialize
    @menu = nil
    @orders = []
  end

  def add_menu(menu)
    @menu = menu
  end

  def create_new(content, customer)
    orders << content.new(customer)
  end

end