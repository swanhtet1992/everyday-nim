import math

proc fibonacci(n: int): int =
    if n < 2:
        result = n
    else:
        result = fibonacci(n - 1) + (n - 2).fibonacci

echo fibonacci(10)

## above recursive formula is good only for small numbers.
## there is a better way to find n-th term by using Binet formula.

proc fib(n: int): float =
    var P = (1 + sqrt(float(5))) / 2 # golden mean
    var p = -1 / P # associated golden number
    
    result = (P^n - p^n) / sqrt(5.0)

echo round(fib(1000))