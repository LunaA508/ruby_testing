def add(a,b)
	return a + b
end

def subtract(a,b)
	return a - b
end

def sum(array)
	array.inject(0) {|sum, a| sum + a}
end

def multiply(array)
		array.inject(1) {|a,b| a* b}
end

def power(a,b)
	return a ** b
end

def factorial(number)
	value = 1
	if(number == 0)
		return 0
	elsif(number == 1)
		return 1
	else
		while(number > 1)
			value = value * number 
			number -= 1
		end
	return value
	end			
end	