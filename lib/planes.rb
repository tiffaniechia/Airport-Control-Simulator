class Planes

def initialize 
	landed
end	

def flying?
	@flying 
end	

def landed
	@flying = false
end	

def fly
	@flying = true	
end 

def landing
	fly
end 

def takeoff
	fly
end	



end