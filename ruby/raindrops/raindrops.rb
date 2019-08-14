class Raindrops
  FACTOR_MAP = { 
    Pling: 3,
    Plang: 5,
    Plong: 7
  }
  
  def self.convert(fixnum)
    raise ArgumentError unless fixnum.is_a?(Fixnum)
    return fixnum.to_s unless fixnum.factors.any? { |num| FACTOR_MAP.each_value.include?(num) }
    FACTOR_MAP.map { |key, value| key.to_s if fixnum.is_factor?(value) }.compact.join
  end
end

class Fixnum
  def factors
    (1..self).select { |num| self % num == 0 }
  end

  def is_factor?(fixnum)
    factors.include?(fixnum)
  end
end

module BookKeeping
  VERSION = 3
end

