#
# This file contains the Ruby code from Program 5.5 of
# "Data Structures and Algorithms
# with Object-Oriented Design Patterns in Ruby"
# by Bruno R. Preiss.
#
# Copyright (c) 2004 by Bruno R. Preiss, P.Eng.  All rights reserved.
#
# http://www.brpreiss.com/books/opus8/programs/pgm05_05.txt
#
class Container < AbstractObject

    abstractmethod :iter

    def each
	i = iter
	while i.more?
	    yield i.succ
	end
    end

end
