var fibonacci = function(){

  var memo = [0, 1];
  var fib = function(n){
    var result = memo[n];

    // If we haven't yet calculated a result for the current number
    // Get it out now.
    if(typeof result !== "number"){
      result = fib(n - 1) + fib(n - 2);
      memo[n] = result;
    }

    return result;
  };

  return fib;
}();

for (var i = 0; i <= 10; i++) {
  console.log("// " + i + " : " + fibonacci(i));
};