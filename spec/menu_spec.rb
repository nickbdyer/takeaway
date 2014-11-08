require 'menu'

describe "Menu" do

  let(:dish) { double :dish }

  it "should allow dishes to be added" do
    menu = Menu.new
    menu.add(dish)
    expect(menu.dishes).to eq [dish]
  end

  it "should allow dishes to be removed" do
    menu = Menu.new
    menu.add(dish)
    menu.remove(dish)
    expect(menu.dishes).to eq []

  end

end