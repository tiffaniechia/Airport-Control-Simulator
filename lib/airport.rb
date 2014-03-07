
class Airport

def check_weather_status
weather = Weather.new
@check = weather.sunny
 	if @check == true 
 	@status = "sunny"
 	else  
 	@status = "stormy"	
	end
	@status
end	

def report_status
	@status
end	

end