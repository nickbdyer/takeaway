require 'takeaway'

describe "Takeaway" do

  let(:the_chutney)   { Takeaway.new                           }
  let(:dinner_menu)   { double :menu                           }
  let(:message_class) { double :message_class, :new => message }
  let(:rich)          { double :customer                       } 
  let(:ben)           { double :customer                       }
  let(:order)         { double :order                          }
  let(:message)       { double :message                        }


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

end