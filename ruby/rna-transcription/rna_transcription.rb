class Complement
  DNA_NUCLEOTIDES = %w(G C T A)
  RNA_NUCLEOTIDES = %w(C G A U)

  def self.of_dna(dna)
    return '' unless (dna.split('') - DNA_NUCLEOTIDES).empty?
    dna.tr(DNA_NUCLEOTIDES.join, RNA_NUCLEOTIDES.join)
  end
end

module BookKeeping
  VERSION=4
end

