class Complement
    DNA_TO_RNA_MAPPING = {
        'G' => 'C',
        'C' => 'G',        
        'T' => 'A',
        'A' => 'U'
    }.freeze

    def self.of_dna(strand)
        strand.each_char.map do |x|
            DNA_TO_RNA_MAPPING.fetch(x) { raise ArgumentError, "Nucleotide #{x} is invalid." }
        end.join
    end
end