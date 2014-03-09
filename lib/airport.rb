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

	def park(plane)
		raise "Not allowed to land twice" if !plane.flying?   
		raise "Airport is full" if full?
		@planes << plane
		plane.land
	end

	def release(plane)
		raise "There are no planes in the airport for release" if !@planes.include?(plane)
		raise "Not allowed to release a already flying plane" if plane.flying?   
		@planes.delete(plane)
		plane.take_off
	end	

	def full?
		plane_count == capacity
	end

	# def empty?
	# 	plane_count = 0
	# end	


end	