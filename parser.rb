class Parser

  def initialize(str)
    @str = str
  end

  def validate(open, close)
    open_count = 0

    @str.split(//).each_with_index do |char, index|
      if char == open
        open_count += 1
      elsif char == close
        return index if open_count == 1
        open_count -= 1
      end
    end

    raise "Invalid syntax.  No closing #{close}"
  end

end

puts Parser.new("Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing.").validate("(", ")")