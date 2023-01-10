#[
    Define an anonymous function that takes in two integers and returns the larger of the two.
    Use this function to sort an array of integers in descending order.
]#

import random, algorithm

randomize()

var numbers: seq[int]

for n in 0..5:
    numbers.add(rand(40))

echo "original numbers: ", numbers

numbers.sort do (x, y: int) -> int : cmp(x, y)

echo numbers