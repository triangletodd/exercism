class Squares
  attr_accessor :difference, :square_of_sum, :sum_of_squares
  
  def initialize(fixnum)
    raise ArgumentError unless fixnum.is_a?(Fixnum)
    numbers = (0..fixnum).to_a
    sum_of_numbers = numbers.inject(&:+)
    squares = numbers.map { |number| number ** 2 }
    @square_of_sum = sum_of_numbers ** 2
    @sum_of_squares = squares.inject(&:+)
    @difference = @square_of_sum - @sum_of_squares
  end
end


module BookKeeping
  VERSION=3
end

