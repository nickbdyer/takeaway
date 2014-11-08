require 'order'

describe "Order" do

  let(:order) { Order.new }
  let(:ham_and_cheese_toastie) { double :dish, price: 5 }
  let(:penne_arrabbiata) { double :dish, price: 6 }

  it "should allow dishes to be added" do
    order.add(ham_and_cheese_toastie)
    expect(order.contents).to eq [ham_and_cheese_toastie]
  end

  it "should allow dishes to be removed" do
    order.add(ham_and_cheese_toastie)
    order.remove(ham_and_cheese_toastie)
    expect(order.contents).to eq []
  end

  it "should be possible to show the current order" do
    order.add(penne_arrabbiata)
    order.add(ham_and_cheese_toastie)
    expect(order.contents).to eq [penne_arrabbiata, ham_and_cheese_toastie]
  end

  it "should calculate the total of the order" do
    order.add(penne_arrabbiata)
    order.add(ham_and_cheese_toastie)
    expect(order.total).to eq 11
  end

  it "should be possible to add multiple dishes at a time" do
    order.add penne_arrabbiata, ham_and_cheese_toastie
    expect(order.contents).to eq [penne_arrabbiata, ham_and_cheese_toastie]
  end

  it "should be possible to remove multiple dishes at a time" do
    order.add penne_arrabbiata, ham_and_cheese_toastie
    order.remove penne_arrabbiata, ham_and_cheese_toastie
    expect(order.contents).to eq []
  end

end