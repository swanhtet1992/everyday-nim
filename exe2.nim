#[
Implement a simple slice iterator as the standard library, which allows iterating through ordinal types.
]#

iterator `...`[T](a: T, b: T): T =
    var res = a
    while res <= b:
        yield res
        inc res

for i in 0...5:
    echo i

#[
    Test
]#

proc `**`[int](a: int, b: int): int =
    result = a*b

echo "2 * 2 is ", 2**2


#[ Inline Iterators ]#

iterator countTo(n: int): int =
    var i = 0
    while i <= n:
        yield i
        inc i

for i in countTo(5):
    echo i

#[
    Every `for i in countTo(5): echo i` is transformed to this code:

    let n = 5
    var i = 0
    while i <= n:
        echo i
        inc i
]#

#[ Closure Iterators ]#

proc countTo(n: int): iterator(): int =
  return iterator(): int =
    var i = 0
    while i <= n:
      yield i
      inc i

let countTo5 = countTo(5)

echo "let's count: ", countTo5()

var output = ""

for i in countTo5():
  output.add($i)

echo "let's continue: ", output