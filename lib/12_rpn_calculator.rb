class RPNCalculator
    attr_accessor :calculator_array

    def initialize
        @calculator_array = []
    end

    def push (value)
        @calculator_array << value
    end

    def plus
        if @calculator_array.empty?
            raise "calculator is empty"
        end
        second = @calculator_array.pop

        if @calculator_array.empty?
            raise "calculator is empty"
        end
        first = @calculator_array.pop

       @calculator_array << first + second
    end

    def minus
        if @calculator_array.empty?
            raise "calculator is empty"
        end
        second = @calculator_array.pop

        if @calculator_array.empty?
            raise "calculator is empty"
        end
        first = @calculator_array.pop

        @calculator_array << first - second
    end

    def divide
        if @calculator_array.empty?
            raise "calculator is empty"
        end
        second = @calculator_array.pop.to_f

        if @calculator_array.empty?
            raise "calculator is empty"
        end
        first = @calculator_array.pop.to_f

        @calculator_array << first / second
    end

    def times
        if @calculator_array.empty?
            raise "calculator is empty"
        end
        second = @calculator_array.pop.to_f

        if @calculator_array.empty?
            raise "calculator is empty"
        end
        first = @calculator_array.pop.to_f

        @calculator_array << first * second
    end

    def value
        @calculator_array.last
    end

end
