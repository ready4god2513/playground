class AdditionalNumber

  def initialize(input)
    @input = input.sort
  end

  def solve
    @input.inject(:+) - 1.upto(@input.max).inject(:+)
  end

end

input = 1.upto(5000).to_a << 400
puts AdditionalNumber.new(input).solve