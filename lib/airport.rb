class Airport

	def initialize
		@planes = []
	end

	def plane_count
		@planes.count
	end	

	def capacity
		10
	end

	def park(plane, weather)
		raise "Not allowed to land twice" if !plane.flying?   
		raise "Airport is full" if full?
		raise "Not allowed to land if stormy" if weather.stormy?
		@planes << plane
		plane.land
	end

	def release(plane, weather)
		raise "There are no planes in the airport for release" if !@planes.include?(plane)
		raise "Not allowed to release a already flying plane" if plane.flying?   
		raise "Not allowed to release if stormy" if weather.stormy?
		@planes.delete(plane)
		plane.take_off
	end	

	def full?
		plane_count == capacity
	end

end	