def ftoc(temp)
	if temp == 32
		0
	else
		(temp -32) * 5/9
	end
end

def ctof(temp)
	if temp == 0
		32
	else
		(temp * 9.0/5 + 32)
	end
end