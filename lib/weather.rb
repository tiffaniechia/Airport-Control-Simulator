

class Weather



	def generate_weather
		generate = rand(10)
		if generate == 1 
			@sunny = false # sets the value
		else 
			@sunny = true
		end	
	end		

	def sunny?
		generate_weather
		@sunny # read the value
	end	

	def stormy?
		generate_weather
		!@sunny # not sunny
	end


end