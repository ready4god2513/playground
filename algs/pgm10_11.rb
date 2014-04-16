#
# This file contains the Ruby code from Program 10.11 of
# "Data Structures and Algorithms
# with Object-Oriented Design Patterns in Ruby"
# by Bruno R. Preiss.
#
# Copyright (c) 2004 by Bruno R. Preiss, P.Eng.  All rights reserved.
#
# http://www.brpreiss.com/books/opus8/programs/pgm10_11.txt
#
class AVLTree < BinarySearchTree

    def attachKey(obj)
	raise StateError if not empty?
        @key = obj
        @left = AVLTree.new
        @right = AVLTree.new
        @height = 0
    end

end
