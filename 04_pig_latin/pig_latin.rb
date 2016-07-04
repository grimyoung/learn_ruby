#write your code here
def translate(english)
	vowels = %w(a e i o u)
	letter_q = false
	pig_latin = ''
	statement = english.split(" ")
	statement.each do |str|
		if vowels.include? str[0]
			 pig_latin = pig_latin + str + 'ay '
		elsif str[0..2].include? 'qu'
			if str[1..2] =='qu'
				pig_latin = pig_latin + str[3..-1].to_s+str[0..2]+ 'ay '
			elsif vowels.include? str[2]
				pig_latin = pig_latin + str[2..-1].to_s + str[0..1] + 'ay '
			else
				pig_latin = pig_latin + str[3..-1].to_s + str[1..2] + 'ay '
			end
		elsif vowels.include? str[1]
			pig_latin = pig_latin + str[1..-1].to_s + str[0] + 'ay '
		elsif vowels.include? str[2]
			pig_latin = pig_latin + str[2..-1].to_s + str[0..1] + 'ay '
		else
			pig_latin = pig_latin + str[3..-1].to_s + str[0..2] + 'ay '
		end

	end
	return pig_latin.chomp(" ")
end