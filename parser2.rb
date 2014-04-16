class Parser

  TOKENS = { 
    "{" => "}",
    "(" => ")",
    "[" => "]"
  }

  OPENERS = TOKENS.keys
  CLOSERS = TOKENS.values

  def self.valid?(str)
    open = []

    str.split(//).each do |char|
      if OPENERS.include?(char)
        open << char 
      elsif match = TOKENS.find { |k, v| v == char }
        if open.last == match.first
          open.pop
        else
          return false
        end
      end
    end

    open.empty?
  end

end


puts Parser.valid?("{( this is valid )}") == true
puts Parser.valid?("{( this is not valid })") == false
puts Parser.valid?("{ [ ( ] ) }") == false
puts Parser.valid?("{ [ }") == false
puts Parser.valid?("{ [ ] ( ) }") == true