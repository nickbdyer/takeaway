require 'takeaway'

describe "Takeaway" do

  let(:the_chutney)       { Takeaway.new                            }
  let(:dinner_menu)       { double :menu                            }
  let(:order_class_rich)  { double :order_class, :new => order_rich }
  let(:order_class_ben)   { double :order_class, :new => order_ben  }
  let(:rich)              { double :customer                        }
  let(:ben)               { double :customer                        }
  let(:order_rich)        { double :order, customer: rich           }
  let(:order_ben)         { double :order, customer: ben            }


  it "should not have a menu when initialized" do 
    expect(the_chutney.menu).to be_falsy
  end

  it "should allow a menu to be added" do
    the_chutney.add_menu(dinner_menu)
    expect(the_chutney.menu).to eq dinner_menu
  end
 
  it "should allow an order to be created" do
    the_chutney.create_new(order_class_rich, rich)
    expect(the_chutney.orders).to eq [order_rich]
  end

  it "should allow an order to be retrieved by customer" do
    the_chutney.create_new(order_class_rich, rich)
    the_chutney.create_new(order_class_ben, ben)
    expect(the_chutney.retrieve_order(rich)).to eq order_rich  
  end


end