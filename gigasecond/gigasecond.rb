require 'time'

class Gigasecond
    GIGASECOND = 10**9
    
    def self.from start_date
        raise ArgumentError unless start_date.is_a? Time
        start_date.to_time + GIGASECOND
    end      
end
