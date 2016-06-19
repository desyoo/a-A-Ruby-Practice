class XmlDocument
    attr_accessor :map

    def initialize
        @map = {}
    end

    def hello (map = {})
        if map.empty?
            "<hello/>"
        else
            map.each do |hash|
                hash.each do |key, value|
                    map.map { |key,value| "#{key}'#{value}'" }.join(' ')
                end
            end
        end
    end
end
