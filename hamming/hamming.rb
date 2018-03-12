class Hamming
    def self.compute(strand1, strand2)
        strand1, strand2 = [strand1, strand2].sort_by(&:length)
        pairs = strand1.chars.zip(strand2.chars)
        pairs.count{ |item1, item2| item1 != item2 }
    end
end
