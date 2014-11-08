require 'dish'

describe "Dish" do

  it "should be initialized with a name" do
    meal = Dish.new("Hamburger", 7.50)
    expect(meal.name).to eq "Hamburger"
  end



end