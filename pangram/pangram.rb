class Pangram
  ALPHABET = ('a'..'z').to_a
  def self.is_pangram?(str)
    ALPHABET.all? { |letter| str.downcase.split('').include?(letter) }
  end
end

module BookKeeping
  VERSION=2
end

