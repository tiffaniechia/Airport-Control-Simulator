class Planes

def initialize 
	land
end	

def flying?
	@flying
end	

def fly
	@flying = true	
end 

def land
	@flying = false
end 

def takeoff
	fly
end	

end