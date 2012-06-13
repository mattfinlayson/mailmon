class Status
	def initialize
		puts "initialized"
	end

	def eval(mailcount)
		if mailcount <= 5
			return "totally under control"
		elsif mailcount > 5 and mailcount <= 50
			return "manageable"
		elsif mailcount > 50 and mailcount <= 100
			return "on alert"
		elsif mailcount > 100 and mailcount <= 200
			return "PRETTY BAD"
		elsif mailcount > 200 and mailcount <= 300
			return "DIRE"
		elsif mailcount > 300 and mailcount <= 500
			return "TERRIBLE"
		else
			return "ON LIFE SUPPORT"
		end
	end
end