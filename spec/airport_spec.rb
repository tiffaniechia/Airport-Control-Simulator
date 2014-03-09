require './lib/plane'
require './lib/airport'
require './lib/weather'

describe Airport do

let(:airport) {Airport.new}
let(:plane) {Plane.new}
let(:weather) {Weather.new}

	it "should start with zero planes" do
		expect(airport.plane_count).to eq(0)
	end	

	it "should have a default capacity" do

		expect(airport.capacity).to eq (10)
	end	

	it "should be able to take a landing plane" do 
		expect(airport.plane_count).to eq(0)
		airport.park(plane)
		expect(airport.plane_count).to eq(1)
	end	

	it "should be able to let a plane take off" do
		expect(airport.plane_count).to eq(0)
		airport.park(plane)
		expect(airport.plane_count).to eq(1)
		airport.release(plane)
		expect(airport.plane_count).to eq(0)
	end


	it "should change flying status of plane after landing " do
		airport.park(plane)
		expect(plane).not_to be_flying
	end	

	it "should change flying status of plane after released" do
		airport.park(plane)
		expect(plane).not_to be_flying
		airport.release(plane)
		expect(plane).to be_flying
	end	

	it "should know when max capacity has been reached" do
		expect(airport.full?).to be_false
		(airport.capacity).times {airport.park(Plane.new)}
		expect(airport.plane_count).to eq(10)
		expect(airport.full?).to be_true
	end	

	it "should not allow planes to land if airport is full" do
		expect(airport.full?).to be_false
		(airport.capacity).times {airport.park(Plane.new)}
		expect(airport.full?).to be_true
		expect{(airport.park(Plane.new))}.to raise_error(RuntimeError)
	end	

	it "should not be able to park a plane again if plane has already been parked" do
		airport.park(plane)
		expect{(airport.park(plane))}.to raise_error(RuntimeError)
	end	

	it "should not be able to release a plane again if plane has already been released" do
		airport.park(plane)
		airport.release(plane)
		expect{(airport.release(plane))}.to raise_error(RuntimeError)
	end	


	it "should not be able to take off if stormy" do
    weather = Weather.new
   	weather.stub(:generate_weather).and_return(1)
   	expect(weather).to be_stormy
   	expect{(airport.park(plane))}.to raise_error(RuntimeError)
  end	

   




end

