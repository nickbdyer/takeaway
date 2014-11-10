require 'twilio-ruby' 
 
module Message

  ACCOUNT_SID = ENV['TWILIO_AC'] 
  AUTH_TOKEN  = ENV['TWILIO_PS'] 
  CLIENT = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN

  # def print_list(order)
  #   text_body = "Hello #{order.customer}, your order will be with you in one hour!\nPayment of £#{order.total} has been taken.\nOrder Details:"
  #   bill = Hash.new 0
  #   order.contents.map(&:name).each { |dish| bill[dish] += 1 }
  #   bill.each { |key, value| text_body << "\n#{value}:- #{key}" }
  #   text_body
  # end

   def print_list_with_price(order)
    text_body = "Hello #{order.customer}, your order will be with you in one hour!\nPayment of £#{order.total} has been taken.\nOrder Details:"
    bill = Hash.new 0
    order.contents.each { |dish| bill[dish] += 1 }
    bill.each { |key, value| text_body << "\nQty:#{value} : #{key.name} @ £#{key.price}" }
    text_body
  end

  def send_text(order, client = CLIENT)
    @client = client
    @client.account.messages.create({ from: '+441163261399', to: '07734 070002', 
      :body => print_list_with_price(order) })
    "Message sent"
  end

end