require 'takeaway'

describe "Takeaway" do

  let(:the_chutney) { Takeaway.new }
  let(:dinner_menu) { double :menu }

  it "should not have a menu when initialized" do 
    expect(the_chutney.menu).to be_falsy
  end

  it "should allow a menu to be added" do
    the_chutney.add_menu(dinner_menu)
    expect(the_chutney.menu).to eq dinner_menu
  end



end