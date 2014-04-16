def fib(n)
  return n if n == 0
  f = Array.new(n, 0)
  f[1] = 1
  2.upto(n) do |a|
    f[a] = f[a - 1] + f[a - 2] # Take the previous result and the result before that and add them
  end

  f[n]
end

puts fib(20)