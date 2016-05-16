def translate(word)
	words = []
	words = word.split(" ")
	new_words = []
		
	words.each do |split|
		if (split.start_with?("a","e","i","o","u"))
			new_words.push(split + "ay")
		elsif(split.start_with?("qu")) 
			first_letter = split[0..1]
			split.slice!(0..1)
			
			new_words.push(split + first_letter + "ay")
		elsif (split.start_with?("a","e","i","o","u") == false)
			first_letter = split[0]
			split.slice!(0)
			
			if(split.start_with?("qu"))
				second_phenome = split[0..1]
				split.slice!(0..1)
		
				new_words.push(split + first_letter + second_phenome + "ay")	
			elsif (split.start_with?("a","e","i","o","u") == false)
				second_letter = split[0]
				split.slice!(0)
				
				if (split.start_with?("a","e","i","o","u") == false)
					third_letter = split[0]
					split.slice!(0)
			
					new_words.push(split + first_letter + second_letter + third_letter + "ay")
				else
					new_words.push(split + first_letter + second_letter + "ay")
				end	
			else
				new_words.push(split + first_letter + "ay")
			end	
		end
	end
	new_words.join(" ")
end