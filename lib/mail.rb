require './lib/status.rb'

class MyMail
	def initialize
		puts "initialized"
	end
	
	def eval()
	  gmail = Gmail.new("XXX", "XXX")
    status = Status.new
    return "mattfinlayson@gmail.com's email is " + status.eval(gmail.inbox.count(:unread)) + " (" + gmail.inbox.count(:unread).to_s + " unread out of " + gmail.inbox.count(:read).to_s + ") "
  end
end
