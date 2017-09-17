def add(num1,num2)
	num1 + num2
end

def subtract(num1,num2)
	num1 - num2
end

def sum(array)
	array.inject(0) {|sum, x| sum + x}
end

def multiply(num1, num2, num3 = 1)
	num1 * num2 * num3
end

def power(num, power)
	otvet = num
	while power>1
		otvet *= num 
		power -= 1
	end
	return otvet
end

def factorial(num)
	if num == 0
		0
	else
    	num > 1 ? num * factorial(num - 1) : 1
  	end
end