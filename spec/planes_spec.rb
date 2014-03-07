require './lib/planes'

describe Planes do 

let(:plane) {Planes.new}

it "should not be flying when we initialize it" do
	expect(plane.flying?).to be_false
end

it "should be able to fly" do 
	plane.fly
	expect(plane.flying?).to be_true
end

it "should be able to land" do 
	plane.fly
	plane.landing
	expect(plane.flying?).to be_true
end	

it "should know if it is flying" do
	plane.fly
	expect(plane.flying?).to be_true
	plane.landed
	expect(plane.flying?).to be_false
end	

it "should be able to fly after taking off" do
	expect(plane.flying?).to be_false
	plane.takeoff
	expect(plane.flying?).to be_true
end



end	