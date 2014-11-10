require 'takeaway'

describe "Takeaway" do

  let(:the_chutney)   { Takeaway.new                                                   }
  let(:dinner_menu)   { double :menu, dishes: [hamburger, salad]                       } 
  let(:order)         { double :order, total: 15, contents: [hamburger, salad]         }  
  let(:bad_order)     { double :order, total: 15, contents: [hamburger, salad, salmon] }  
  let(:message)       { double :message                                                }
  let(:rich)          { double :customer                                               } 
  let(:ben)           { double :customer                                               }
  let(:hamburger)     { double :dish, name: "Hamburger"                                }
  let(:salad)         { double :dish, name: "Salad"                                    }
  let(:salmon)        { double :dish, name: "Salmon"                                   }



  it "should not have a menu when initialized" do 
    expect(the_chutney.menu).to be_falsy
  end

  it "should allow a menu to be added" do
    the_chutney.add_menu(dinner_menu)
    expect(the_chutney.menu).to eq dinner_menu
  end

  it "should allow a message to be created and sent" do
    the_chutney.add_menu dinner_menu
    expect(order).to receive(:customer)
    the_chutney.create(order, 15)
  end

  it "should check that the payment is correct for the order" do
    expect(the_chutney.payment_correct?(order, 15)).to be true
  end

  it "should check that the dishes on the order are available" do
    the_chutney.add_menu dinner_menu
    expect(the_chutney.dishes_available?(order)).to be true
  end

  it "should raise an error if the payment is incorrect" do
    expect{the_chutney.check_order(order, 13)}.to raise_error("Your payment was incorrect.")
  end

  it "should raise an error if the ordered dishes are not on the menu" do
    the_chutney.add_menu dinner_menu
    expect{the_chutney.check_order(bad_order, 15)}.to raise_error("Your order was invalid.")
  end

end