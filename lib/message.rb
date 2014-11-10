require 'twilio-ruby' 
 
module Message

    ACCOUNT_SID = ENV['TWILIO_AC'] 
    AUTH_TOKEN  = ENV['TWILIO_PS'] 

  def print_list(order)
    bill = Hash.new 0
    order.contents.map(&:name).each { |dish| bill[dish] += 1}
    bill
    # bill.each { |key, value| puts "#{value}:- #{key}" }
  end

  def send_text(order)
    @client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN 
    @client.account.messages.create({
      :from => '+441163261399', 
      :to => '07734 070002', 
      :body => "Hello #{order.customer}, your order will be with you in one hour!\nPayment of £#{order.total} has been taken.\nOrder Details: #{print_list(order)}", 
    })
    "Message sent"
  end

end