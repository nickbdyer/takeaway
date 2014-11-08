class Order

  attr_reader :contents

  def initialize
    @contents = []
  end

  def add(*dishes)
   dishes.each { |dish| contents << dish } 
  end

  def remove(*dishes)
    dishes.each { |dish| contents.delete(dish) }
  end

  def total
    contents.map(&:price).inject(:+)
  end


end