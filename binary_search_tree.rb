class BinarySearchTreeValidator

  # To Be valid- 
  # The node's value is greater than all values in the left subtree.
  # The node's value is less than all values in the right subtree.

  def initialize(tree)
    @tree = tree
  end

  def valid?
    root, min, max = @tree.shift, 0, Float::INFINITY
  end

end

invalid_tree = [50, [30, [20, 60]], [80, [70, 90]]]
valid_tree = [50, [30, [20, 25]], [80, [50, 70]]]

puts BinarySearchTreeValidator.new(invalid_tree).valid? == false
puts BinarySearchTreeValidator.new(valid_tree).valid? == true