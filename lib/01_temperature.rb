def ftoc(f_temp)
    celsius = (f_temp - 32) * 5.0/9.0
    return celsius
end

def ctof(c_temp)
   fahrenheit = c_temp * (9.0/5.0) + 32
   return fahrenheit
end
