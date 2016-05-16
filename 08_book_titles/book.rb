class Book

	def title=(word)
		articles_and_prepositions = ["and", "in", "the", "of", "a", "an"] 
		
		temporary = word.split.each{|a| a.capitalize! if !articles_and_prepositions.include? a}.join(" ")
		temporary = temporary.split
		temporary[0].capitalize!
		
		@title = temporary.join(" ")
	end
	
	def title
		@title
	end
end