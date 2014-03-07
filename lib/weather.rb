class Weather

	attr_accessor :sunny

	def generate_weather
	rand(30)
	end

	def stormy
		if generate_weather == 1 
			@sunny = false
		end	
	end	

	def sunny
		if generate_weather != 1 
			@sunny = true
		end	
	end		

	def weather?
		@sunny
	end	


end