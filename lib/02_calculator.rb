
#addition
def add(a, b)
    return a + b
end

#subtraction
def subtract(a, b)
    return a - b
end

#summing all numbers in an array
def sum(arr)
    output = 0
    arr.each do |num|
       output += num
    end
    return output
end

#multiply numbers
def multiply(arr)
   output = 1
   arr.each do |num|
       output *= num
   end
   return output
end


def power(base, pow)
    output = 1
    pow.times do
        output *= base
    end
    return output
end


def factorial (num)
   if num == 0
       return 1
   end

   idx = 1
   output = 1
   while idx <= num
    output *= idx
    idx += 1
   end

   return output

end
