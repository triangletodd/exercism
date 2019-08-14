class Squares
  def initialize(fixnum)
    raise ArgumentError unless fixnum.is_a?(Fixnum)
    @numbers = (0..fixnum).to_a
  end

  def square_of_sum
    sum_of_numbers ** 2
  end

  def sum_of_squares
    squares.inject(&:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

private

  def sum_of_numbers
    @numbers.inject(&:+)
  end

  def squares
    @numbers.map { |number| number ** 2 }
  end
end


module BookKeeping
  VERSION=3
end

