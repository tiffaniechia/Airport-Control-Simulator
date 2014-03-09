require './lib/weather'


describe Weather do 

	let(:weather) {Weather.new}


	it "should be stormy when generator puts 1" do 
		weather.stub(:generate_weather).and_return(1)
   	expect(weather).to be_stormy
	end	

	it "should not be stormy when generator puts 2" do 
		weather.stub(:generate_weather).and_return(2)
   	expect(weather).not_to be_stormy
	end	

end	