require './lib/airport'

describe Airport do

it "should be able to receive weather status" do 
	airport = Airport.new
	airport.check_weather_status
end


it "should be able to receive sunny status" do
	airport = Airport.new
	weather = Weather.new
	allow(weather).to receive(:generate_weather) {2}	
	expect(weather.sunny).to be_true
	expect(weather.weather?).to be_true
	expect(airport.check_weather_status).to eq("sunny")
end

end

