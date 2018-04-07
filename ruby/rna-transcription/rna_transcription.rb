class Complement
    # replace dna nucleotide with corresponding rna nucleotide
    # G -> C
    # C -> G
    # T -> A
    # A -> U

    def self.of_dna(strand)
        return "" if strand.include? #anything other than GCTA
        # replace above matches 
    end
end
