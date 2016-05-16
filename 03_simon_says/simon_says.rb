def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, number = 2)
	return ([word] * number).join(" ")
end

def start_of_word(word, number)		 
	array = []
	length = 0
	
	while(length < number)
		array.push(word[length])
		length += 1
	end	
	
	return array.join
end

def first_word(phrase)
	array = phrase.split(" ")
	return array[0]
end

def titleize(word)
	#return word.split.map(&:capitalize).join(" ")#
	
	array = word.split
	
	array.each do |a|
		if(a != "do" && a != "and" && a!= "over" && a!= "the" )
			a.capitalize!
		else
			a.downcase!
		end
		
	end
		array[0].capitalize!
		return array.join(" ")
end

