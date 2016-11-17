class Sieve
  attr_accessor :primes

  def initialize(number)
    @number = number
    @numbers = (2..number).to_a
    @primes = []
    calculate unless number < 2
  end

private

  def calculate
    # Take the next available unmarked number.
    current_number = @numbers.shift
    # (it is prime)
    @primes.push current_number
    # exit if nothing to mark
    return if @numbers.empty?
    # mark all the multiples of that number (remove them from our range)
    @numbers -= multiples_of(number: current_number, max: @numbers.last)
    # repeat
    calculate
  end

  def multiples_of(number:, max:)
    (1..max).to_a.select { |int| int % number == 0 }
  end
end

module BookKeeping
  VERSION=1
end

