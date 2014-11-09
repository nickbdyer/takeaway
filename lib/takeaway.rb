class Takeaway

  attr_reader :menu

  def initialize
    @menu = nil
  end

  def add_menu(menu)
    @menu = menu
  end

end