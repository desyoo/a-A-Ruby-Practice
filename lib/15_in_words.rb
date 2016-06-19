module Inword
    def in_words
        nums = ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine","ten","eleven","twelve","thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        nums[self]
    end
end

class Fixnum
   include Inword
end
