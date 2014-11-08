require 'order'

describe "Order" do

  let(:order) { Order.new }
  let(:ham_and_cheese_toastie) { double :dish }

  it "should allow dishes to be added" do
    order.add(ham_and_cheese_toastie)
    expect(order.contents).to eq [ham_and_cheese_toastie]
  end

  it "should allow dishes to be removed" do
    order.add(ham_and_cheese_toastie)
    order.remove(ham_and_cheese_toastie)
    expect(order.contents).to eq []
  end

end