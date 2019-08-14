class Pangram
  ALPHABET = ('a'..'z').to_a
  def self.is_pangram?(str)
    str_chars = str.downcase.split('')
    ALPHABET.all? { |letter| str_chars.include?(letter) }
  end
end

module BookKeeping
  VERSION=2
end

