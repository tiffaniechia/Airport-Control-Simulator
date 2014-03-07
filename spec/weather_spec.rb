require './lib/weather'

describe Weather do 

let (:weather) {Weather.new}

it "should be able to generate weather/numbers" do
	weather.generate_weather	
end	

it "should be able to generate stormy weather" do
	allow(weather).to receive(:generate_weather) {1}
	expect(weather.generate_weather).to eq(1)
	expect(weather.stormy).to be_false
	expect(weather.weather?).to be_false
end	

it "should be able to generate sunny weather" do
	allow(weather).to receive(:generate_weather) {2}	
	expect(weather.sunny).to be_true
	expect(weather.weather?).to be_true
end

end	