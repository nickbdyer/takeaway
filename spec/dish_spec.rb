require 'dish'

describe "Dish" do

  it "should be initialized with a name" do
    meal = Dish.new("Hamburger", 7.50)
    expect(meal.name).to eq "Hamburger"
  end

  it "should be initialized with a price" do
    meal = Dish.new("Breadsticks", 1.50)
    expect(meal.price).to eq 1.50
  end

end