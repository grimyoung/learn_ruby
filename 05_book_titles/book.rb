class Book
# write your code here
	attr_accessor :title

	def title=(str)
		list = str.split(" ")
		#small_words is not exhaustive
		small_words = %w(the a an and for but or yet so in at on)
		list.each_with_index do |word, index|
			if (word.length >2 and !small_words.include? word) or word == "i" or index == 0
				word.capitalize!
			end
		end
		@title = list.join(" ")
	end
end
