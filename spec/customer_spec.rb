require 'spec_helper'
require 'customer'

describe "Customer" do

  let(:nick)          { Customer.new          }
  let(:dominos)       { double :takeaway      }
  let(:my_order)      { double :order         }

  it "should be able to place an order" do
    expect(dominos).to receive(:create).with(my_order, 15)
    nick.place_order(dominos, my_order, 15)
  end

end
