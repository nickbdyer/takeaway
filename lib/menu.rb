class Menu

  attr_reader :dishes

  def initialize
    @dishes = []
  end

  def add(dish)
    dishes << dish
  end

  def remove(dish)
    dishes.delete(dish)
  end


end