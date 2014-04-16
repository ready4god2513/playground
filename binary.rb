class Fixnum

  def to_binary
    res = []
    base, mod = self, 0
    loop do
      res << base % 2
      base = base / 2
      break if base == 0
    end
    
    res.reverse.join.to_i
  end

end


puts 1000.to_binary == 1111101000