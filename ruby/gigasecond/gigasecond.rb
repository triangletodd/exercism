class Gigasecond
  def self.from(time)
    raise ArugmentError unless time.instance_of?(Time)
    time + (10 ** 9)
  end
end

module BookKeeping
  VERSION=5
end

