# A queue implements FIFO while a stack implements LIFO
class Queue

  MAX_SIZE = 10

  def initialize
    @queue = []
  end

  def enqueue(elem)
    raise "Stack Overflow" if full?
    @queue.unshift(elem)
  end

  def dequeue
    raise "Nothing in Queue" if empty?
    @queue.pop
  end

  def peek
    @queue.last
  end

  def size
    @queue.size
  end

  private

  def full?
    @queue.length == MAX_SIZE
  end

  def empty?
    @queue.empty?
  end

end