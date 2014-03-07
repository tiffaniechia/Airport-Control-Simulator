class Planes

def initialize 
	stationary
end	

def flying?
	@flying 
end	

def stationary
	@flying = false
end	

def fly
	@flying = true	
end 

def land
	fly
end 

def takeoff
	fly
end	



end