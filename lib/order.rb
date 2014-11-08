class Order

  attr_reader :contents

  def initialize
    @contents = []
  end

  def add(dish)
    contents << dish
  end



end