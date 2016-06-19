class Dictionary
    attr_accessor :map

    def initialize
        @map = {}
    end

    def entries
        return @map
    end

    def add (input = {})
        if input.is_a?Hash
            @map.update(input)
        else
            @map.update(input => nil)
        end
    end

    def keywords
       return @map.keys.sort
    end

    def include? (key)
        return @map.has_key?(key)
    end

    def find (prefix)
        if @map.select { |key, value| key.start_with? prefix } == nil
            return {}
        else
            return @map.select { |key, value| key.start_with? prefix }
        end
    end


    def printable
        printable_string = ""
        @map.sort.each do |k,v|
            printable_string = printable_string + %Q{[#{k}] "#{v}"\n}
        end
        return printable_string.chomp
    end
end
