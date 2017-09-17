def translate(string)
	words = string.split.map! do |word|
		cap = false 
		if word == word.capitalize
			word.downcase!
			cap = true
		end
		if !!(word[-1] =~ /[,.!?;:]+/i)
			punct = word[-1]
			word.chop!
		end
		if !!(word[0] =~ /[aeiou]+/i) 
			word = word << "ay"
		else	
			while !(!!(word[0] =~ /[aeiouy]+/i))
				if word[0..1] == "qu"
					word = word[2..-1]+word[0..1]
				else
					word = word[1..-1]+word[0]
				end	
			end
			word = word + "ay"
		end
		if punct != nil
			word << punct	
		end
		if cap == true
			word = word.capitalize
		else
			word	
		end
	end
	words.join(" ")
end



