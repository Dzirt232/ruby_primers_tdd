class Book
	attr_accessor :title

	def title=(string)
		words = string.split.map do |word|
    		if %w(the and over in of a an).include?(word)
     			word
    		else 
			word.capitalize!
			word
			end	
		end
		words[0].capitalize!
  		@title = words.join(" ")
	end
end