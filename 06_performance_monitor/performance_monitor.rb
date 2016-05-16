def measure(argument = 1)
	start = Time.now
	
	argument.times do
		yield
	end
	
	return (Time.now -  start)/argument
end