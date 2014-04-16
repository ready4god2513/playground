#
# This file contains the Ruby code from Program 7.17 of
# "Data Structures and Algorithms
# with Object-Oriented Design Patterns in Ruby"
# by Bruno R. Preiss.
#
# Copyright (c) 2004 by Bruno R. Preiss, P.Eng.  All rights reserved.
#
# http://www.brpreiss.com/books/opus8/programs/pgm07_17.txt
#
class OrderedListAsLinkedList < OrderedList

    class Cursor < Cursor

        def insertAfter(obj)
            @element.insertAfter(obj)
            @list.count += 1
	end

    end

end
