require 'order'

describe "Order" do

  let(:ham_and_cheese_toastie) { double :dish }

  it "should allow dishes to be added" do
    order = Order.new
    order.add(ham_and_cheese_toastie)
    expect(order.contents).to eq [ham_and_cheese_toastie]
  end

end