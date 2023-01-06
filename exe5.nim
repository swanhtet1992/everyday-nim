#[
    Exercise: Write a function applyToAll that takes an sequence of numbers and a function
    and returns a new sequence with the function applied to each element of the original array.
]#
import sequtils

proc applyToAll(numbers: seq[int], fun: proc): seq[int] =
    #numbers.map do (x: int) -> int: fun(x)
    map numbers, fun

proc multiplyByTwo(x: int): int =
    result = x * 2

echo applyToAll(@[1, 2, 3], multiplyByTwo)