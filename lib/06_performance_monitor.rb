def measure (num=1, &block)
    total_time = 0

    num.times do
        start = Time.now
        block.call
        finish = Time.now
        total_time += (finish - start)
    end

    return total_time / num
end
