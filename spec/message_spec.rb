require 'spec_helper'
require 'message'

shared_examples "message" do 

  let(:messagesender) { described_class.new }
  let(:order)         { double :order }  
  let(:client)        { double :client }

  it "should send a text" do
    allow(order).to receive(:customer)
    expect(client).to receive_message_chain(:account,:messages,:create)
    messagesender.send_text(order, client)
  end

end
