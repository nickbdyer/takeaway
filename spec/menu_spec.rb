require 'menu'

describe "Menu" do

  let(:menu) { Menu.new }
  let(:salad_nicoise) { double :dish, :class => Dish }
  let(:beef_stroganoff) { double :dish, :class => Dish}
  let(:insalata_caprese) { double :dish, :class => Dish }

  it "should allow dishes to be added" do
    menu.add(salad_nicoise)
    expect(menu.dishes).to eq [salad_nicoise]
  end

  it "should allow dishes to be removed" do
    menu.add(beef_stroganoff)
    menu.remove(beef_stroganoff)
    expect(menu.dishes).to eq []
  end

  it "should be possible to show the current menu" do
    menu.add(insalata_caprese)
    menu.add(beef_stroganoff)
    expect(menu.dishes).to eq [insalata_caprese, beef_stroganoff]
  end

end
