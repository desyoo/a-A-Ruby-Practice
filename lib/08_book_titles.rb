class Book
    attr_accessor :title

    def initialize
		@title = title
	end

	def title
		words = @title.to_s.split
		lowercase = ["the","and","for","of","a","an","in"]

		for word in words do
			word.capitalize! unless lowercase.include?(word)
		end

		words[0].to_s.capitalize!
		words.join(" ")
	end
end
