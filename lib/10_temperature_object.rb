class Temperature
    attr_accessor :celsius, :fahrenheit

    def initialize (map = {})
        if map.has_key?:f
            @fahrenheit = map[:f]
            @celsius = (@fahrenheit - 32) * 5.0 / 9.0
        elsif map.has_key?:c
            @celsius = map[:c]
            @fahrenheit = @celsius * 9.0 / 5.0 + 32
        end
    end

    def in_fahrenheit
		return @fahrenheit
	end

	def in_celsius
		return @celsius
	end

	def Temperature.from_celsius(celsius)
	    return Temperature.new(:c => celsius)
	end

	def Temperature.from_fahrenheit(fahrenheit)
	    return Temperature.new(:f => fahrenheit)
	end
end


class Celsius < Temperature
    def initialize(celsius)
        ctof (celsius)
    end

    def ctof (celsius)
        @celsius = celsius
        @fahrenheit = @celsius * 9.0 / 5.0 + 32
    end
end




class Fahrenheit < Temperature
    def initialize (fahrenheit)
        ftoc (fahrenheit)
    end

    def ftoc (fahrenheit)
        @fahrenheit = fahrenheit
        @celsius = (@fahrenheit - 32) * 5.0 / 9.0
    end
end
