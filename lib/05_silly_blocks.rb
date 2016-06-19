def reverser
    output = []
    words = yield.split
    words.each do |word|
      output << word.reverse
    end
    return output.join(" ")
end


def adder(addnum=1, &block)
    block.call + addnum
end


def repeater(num=1, &block)
    num.times do
        block.call
    end
end
