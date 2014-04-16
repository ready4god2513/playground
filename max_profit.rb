class Profit

  def initialize(input)
    @range = input
  end

  def max_in_range
    min = @range.first
    max_profit = 0

    @range.each do |n|
      min = n if n < min
      max_profit = [max_profit, n - min].max
    end

    max_profit
  end

end

def generate_range
  1.upto(5).map { |n| Random.new.rand(500..600) }
end

puts Profit.new(generate_range).max_in_range