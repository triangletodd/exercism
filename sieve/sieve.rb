class Sieve
  attr_reader :primes

  def initialize(max)
    @numbers = (2..max).to_a
    @primes = []
    calculate unless max < 2
  end

private

  def calculate
    current_number = @numbers.shift
    @primes.push current_number
    return if @numbers.empty?
    @numbers -= multiples_of(number: current_number, max: @numbers.last)
    calculate
  end

  def multiples_of(number:, max:)
    (1..max).select { |int| int % number == 0 }
  end
end

module BookKeeping
  VERSION=1
end
