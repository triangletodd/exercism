class Integer
  ROMAN_MAP = {
    M: 1000,
    CM: 900,
    D: 500,
    CD: 400,
    C: 100,
    XC: 90,
    L: 50,
    XL: 40,
    X: 10,
    IX: 9,
    V: 5,
    IV: 4,
    I: 1
  }

  def to_roman
    raise NotImplementedError if self > 3000
    state = self
    roman = []
    ROMAN_MAP.each do |key, value|
      while state >= value do
        roman.push key and state -= value
      end
    end
    roman.join
  end
end


module BookKeeping
  VERSION = 2
end
