require 'takeaway'

describe "Takeaway" do

  let(:the_chutney) { Takeaway.new                       }
  let(:dinner_menu) { double :menu                       }
  let(:order_class) { double :order_class, :new => order }
  let(:rich)        { double :customer                   }
  let(:order)       { double :order                      }


  it "should not have a menu when initialized" do 
    expect(the_chutney.menu).to be_falsy
  end

  it "should allow a menu to be added" do
    the_chutney.add_menu(dinner_menu)
    expect(the_chutney.menu).to eq dinner_menu
  end
 
  it "should allow an order to be created" do
    the_chutney.create_new(order_class, rich)
    expect(the_chutney.orders).to eq [order]
  end


end