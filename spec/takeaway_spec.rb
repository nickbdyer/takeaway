require 'takeaway'

describe "Takeaway" do

  it "should not have a menu when initialized" do 
    the_chutney = Takeaway.new
    expect(the_chutney.menu).to be_falsy
  end

end