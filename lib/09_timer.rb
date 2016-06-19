class Timer
    attr_accessor :seconds, :time_string

    def initialize
        @seconds = seconds
        @time_string = time_string

    end

    def seconds
        0
    end

    def time_string
        if @seconds < 60
            @time_string = "00:00:#{padded(@seconds)}"
        elsif @seconds > 60 && @seconds < 3600
            minutes = @seconds / 60
            seconds = @seconds % 60
            @time_string = "00:" + "#{padded(minutes)}:" + "#{padded(seconds)}"
        else
            hours = @seconds / 3600
            minutes = @seconds / 60 % 60
            seconds = @seconds % 60
            @time_string = "#{padded(hours)}:" + "#{padded(minutes)}:" + "#{padded(seconds)}"
        end
    end


    def padded(sec)
       if sec < 10
           return "0#{sec}"
       else
          return "#{sec}"
       end

    end

end
