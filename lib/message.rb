require 'twilio-ruby' 
 
class Message

  def initialize
    account_sid = ENV['TWILIO_AC'] 
    auth_token = ENV['TWILIO_PS'] 
    @client = Twilio::REST::Client.new account_sid, auth_token 
  end   

  def send_text(order)
    @client.messages.create({
      :from => '+441163261399', 
      :to => '07734 070002', 
      :body => "Hello #{order.customer}, your order will be with you in one hour! Payment of £#{order.total} has been taken.", 
    })
    "Message sent"
  end

end