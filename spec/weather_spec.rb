require './lib/weather'

describe Weather do 

it "should be able to generate weather/numbers" do
	weather = Weather.new
	weather.generate_weather	
end	

it "should be able to generate stormy weather" do
	weather =  Weather.new
	allow(weather).to receive(:generate_weather) {1}
	expect(weather.generate_weather).to eq(1)
	expect(weather.stormy).to eq("stormy")
end	

it "should be able to generate sunny weather" do
	weather= Weather.new
	allow(weather).to receive(:generate_weather) {2}	
	expect(weather.sunny).to eq("sunny")
end

end	