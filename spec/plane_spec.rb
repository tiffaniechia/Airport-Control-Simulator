require './lib/plane'

describe Plane do 

	let(:plane) {Plane.new}

	it "should be flying when we initialize it" do
		expect(plane).to be_flying
	end


	it "should be able to land and change flying status" do
		expect(plane).to be_flying
		plane.land
		expect(plane).not_to be_flying
	end

	it "should be able to take off and change fly status" do
		expect(plane).to be_flying
		plane.land
		expect(plane).not_to be_flying
		plane.take_off
		expect(plane).to be_flying
	end	
 
 	

end	