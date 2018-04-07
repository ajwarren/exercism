class Complement
    StrandConversion = {"G" => "C",
                        "C" => "G",
                        "T" => "A",
                        "A" => "U"}

    def self.of_dna(dna_strand)
        dna_strand.size == dna_strand.gsub!(/./, StrandConversion).size ? dna_strand : ''
    end
end

module BookKeeping
    VERSION = 4
end