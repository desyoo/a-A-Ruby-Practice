class Array
  
    def sum
        if self.size == 0
            return 0
        else
            sum = 0
            self.each { |num| sum += num }
            return sum
        end
    end


    def square
        if self.size == 0
            return []
        else
            output = []
            self.each_index { |idx| output[idx] = self[idx] ** 2 }
            return output
        end

    end


    def square!
        if self.size == 0
            return []
        else
            self.each_index { |idx| self[idx] = self[idx] ** 2 }
        end
    end

end
