class Timer 
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hours = 0
		minutes = 0
		if @seconds == 0
			return "00:00:00"
		end

		hours = @seconds / 3600
		hours > 0 ? @seconds -= 3600*hours : nil
		minutes = @seconds / 60
		minutes > 0 ? @seconds -= 60*minutes : nil

		if hours < 10
			hours = "0"+hours.to_s
		else
			hours = hours.to_s
		end
		if minutes < 10
			minutes = "0"+minutes.to_s
		else
			minutes = minutes.to_s
		end
		if @seconds < 10
			@seconds = "0"+@seconds.to_s
		else
			@seconds = @seconds.to_s
		end
		return hours+":"+minutes+":"+@seconds

	end

	def padded(number)
		@seconds = number
		return time_string[-2..-1]
	end
end