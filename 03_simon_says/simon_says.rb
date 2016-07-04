#write your code here
def echo(str)
	return str
end

def shout(str)
	return str.upcase
end

def repeat(str,n=2)
	text =""
	n.times do |variable|
		text = text+str+" "
	end
	return text.chomp(" ")
end

def start_of_word(str,n)
	return str[0..(n-1)]
end

def first_word(str)
	return str.split(" ")[0]
end

def titleize(str)
	list = str.split(" ")
	title = ""
	list.each_with_index do |val, index|
		if index == 0 or index == (list.length-1)
			title = title + val.capitalize+" "
		elsif val.length>4
			title = title + val.capitalize+" "
		else
			title = title+val+" "
		end
	end
	return title.chomp(" ")

end