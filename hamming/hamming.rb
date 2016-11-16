class Hamming
  def self.compute(obj1, obj2)
    raise ArgumentError unless obj1.length == obj2.length
    a1 = obj1.split('')
    a2 = obj2.split('')
    differences = 0
    a1.each_with_index do |char, index|
      differences += 1 unless char == a2[index]
    end
    differences
  end 
end

module BookKeeping
  VERSION=3
end
