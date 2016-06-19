def translate (sentence)
   vowels = ["a","e","i","o","u"]
   output = []
   words = sentence.split

   words.each do |word|
       idx = 0
       r_word = ""    #this will contain characters until we hit the vowel
       while idx < word.length
        if (!vowels.include?(word[idx].downcase))
            r_word += word[idx]
            idx += 1
        else
            if (r_word[-1] == "q" && word[idx] == "u")
                output << word[idx+1..-1] + r_word + word[idx] + "ay"
                break;
            else
                output << word[idx..-1] + r_word + "ay"
                break;
            end

        end
       end
   end

    output.join(" ")
end
