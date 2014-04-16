class AutoComplete



end

class Trie

  def initialize
    @trie = []
  end

  def store(key)
    nodes = key.split(//) << false
    @trie = traverse_tree(@trie, nodes)
  end

  private def traverse_tree(tree, elems)
    elems.each do |el|
      unless tree.include?(el)
        tree << [el]
      end
    end

    tree
  end

end

# See https://www.interviewcake.com/question/compress-url-list
t = Trie.new
t.store("brandon")
t.store("branded")
puts t.inspect