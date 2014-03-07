require './lib/planes'

describe Planes do 

it "should not be flying when we initialize it" do
	plane =Planes.new
	expect(plane.flying?).to be_false
end

it "should be able to fly" do 
	plane = Planes.new 
	plane.fly
	expect(plane.flying?).to be_true
end

it "should be able to land" do 
	plane = Planes.new
	plane.fly
	plane.land
	expect(plane.flying?).not_to be_true
end	

it "should know if it is flying" do
	plane = Planes.new
	plane.fly
	expect(plane.flying?).to be_true
	plane.land
	expect(plane.flying?).to be_false
end	

it "should be able to fly after taking off" do
	plane = Planes.new
	expect(plane.flying?).to be_false
	plane.takeoff
	expect(plane.flying?).to be_true
end


end	