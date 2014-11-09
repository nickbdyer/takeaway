require 'takeaway'

describe "Takeaway" do

  let(:the_chutney)   { Takeaway.new                                           }
  let(:dinner_menu)   { double :menu, dishes: [hamburger, salad]               } 
  let(:order)         { double :order, total: 15, contents: [hamburger, salad] }  
  let(:message_class) { double :message_class, :new => message                 }
  let(:message)       { double :message                                        }
  let(:rich)          { double :customer                                       } 
  let(:ben)           { double :customer                                       }
  let(:hamburger)     { double :dish                                           }
  let(:salad)         { double :dish                                           }
  let(:salmon)        { double :dish                                           }



  it "should not have a menu when initialized" do 
    expect(the_chutney.menu).to be_falsy
  end

  it "should allow a menu to be added" do
    the_chutney.add_menu(dinner_menu)
    expect(the_chutney.menu).to eq dinner_menu
  end

  it "should allow a message to be created and sent" do
    expect(message).to receive(:send_text).with order
    the_chutney.create(message_class, order)
  end

  it "should check that the payment is correct for the order" do
    expect(the_chutney.payment_correct?(order, 15)).to be true
  end

  it "should check that the dishes on the order are available" do
    the_chutney.add_menu dinner_menu
    expect(the_chutney.dishes_available?(order)).to be true
  end

end