#[ First Class Functions ]#
import sequtils, algorithm

let powersOfTwo = @[1, 2, 4, 8, 16, 32, 64, 128, 256]

echo powersOfTwo.filter do (x: int) -> bool: x > 32 # closure with `do` notation
echo powersOfTwo.filter(proc (x: int): bool = x > 32) # closure with regular procedure syntax

proc greaterThan32(x: int): bool = x > 32 # regular procedure

echo powersOfTwo.filter(greaterThan32)

var numbers = @[12, 123, 2, 12, 5, 6, 10]

numbers.sort do (x, y: int) -> int : cmp(x, y)

echo numbers