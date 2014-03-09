class Weather

	def generate_weather
		rand(10)
	end		

	def stormy?
		generate_weather ==  1
	end


end