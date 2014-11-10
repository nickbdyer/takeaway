describe "Message" do

  let(:message) { double :message }
  let(:order)   { double :order }  
  let(:client)  { double :client }


  it "should send a text" do
    expect(message).to receive(:send_text).and_return "Message sent"
    message.send_text(order, client)
  end

end