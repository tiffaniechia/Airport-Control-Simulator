class Weather

	def generate_weather
	rand(30)
	end

	def stormy
		if generate_weather == 1 
			weather = "stormy"
		end	
		weather
	end	

	def sunny
		if generate_weather != 1 
			weather = "sunny"
		end	
		weather
	end		

end