def echo (word)
    "#{word}"
end


def shout (word)
    "#{word}".upcase
end


def repeat (word, num=2)
    output = []
   num.times do
       output << "#{word}"
   end
   return output.join(" ")
end


def start_of_word (word, count=0)
   "#{word}"[0...count]
end


def first_word(sentence)
   sentence.split.first
end



def titleize(sentence)
    words_not_to_capitalize = ["the","or","of","and","if","over"]
    word = sentence.split.each do |str|
        str.capitalize! unless
        words_not_to_capitalize.include?(str.downcase)
    end

    if word.length == 1
        word[0].capitalize
    else
        word[0].capitalize + " " + word[1..-1].join(" ")
    end

end
