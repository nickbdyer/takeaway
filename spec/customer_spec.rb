require 'customer'

describe "Customer" do

  let(:nick)          { Customer.new          }
  let(:dominos)       { double :takeaway      }
  let(:my_order)      { double :order         }
  let(:message_class) { double :message_class }

  it "should be able to place an order" do
    # allow(my_order).to receive(:total).and_return 15
    expect(dominos).to receive(:create).with(message_class, my_order)
    nick.place_order(dominos, my_order, 15, message_class)
  end

end