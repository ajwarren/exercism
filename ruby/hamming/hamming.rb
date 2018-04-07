class Hamming
    def self.compute(strand1, strand2)
        raise ArgumentError.new if strand1.size != strand2.size
        (0...strand1.size).count {|index| strand1[index] != strand2[index]}
    end
end

module BookKeeping
    VERSION = 3
end
