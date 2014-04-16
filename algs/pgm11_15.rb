#
# This file contains the Ruby code from Program 11.15 of
# "Data Structures and Algorithms
# with Object-Oriented Design Patterns in Ruby"
# by Bruno R. Preiss.
#
# Copyright (c) 2004 by Bruno R. Preiss, P.Eng.  All rights reserved.
#
# http://www.brpreiss.com/books/opus8/programs/pgm11_15.txt
#
class BinomialQueue < MergeablePriorityQueue

    def addTree(tree)
        @treeList.append(tree)
        @count += tree.count
    end

    def removeTree(tree)
        @treeList.extract(tree)
        @count -= tree.count
    end

end
