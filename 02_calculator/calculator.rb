#write your code here
def add(x,y)
	return x+y
end

def subtract(x,y)
	return x-y
end

def sum(list)
	total = 0
	list.each{|e| total = total+e}
	return total
end

def multiply(list)
	total = 1
	list.each{|e| total=total*e}
	return total
end

def power(x,y)
	return x**y
end

def factorial(num)
	num = num.to_i
	if num <2
		return 1
	end
	total = 1
	num.downto(2) do |e|
		total = total*e
	end
	return total
end