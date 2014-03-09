class Plane


	def initialize 
		take_off
	end	

	def flying?
		@flying
	end	

	def land
		@flying = false
	end	

	def take_off
		@flying = true
	end	

end