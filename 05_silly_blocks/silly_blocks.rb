def reverser
	yield.split(" ").map(&:reverse).join(" ")
end

def adder(argument = 1)  
	yield + argument
end

def repeater(argument = 1)
	argument.times do
		yield
	end	
end