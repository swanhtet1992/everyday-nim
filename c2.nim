#[
    Define an anonymous function that takes in an integer and returns the result of adding 5 to it.
    Use this function to create a new array with the results of applying it to each element of an existing array of integers.
]#

import sequtils

# Define an array of integers
let x = [1, 2, 3, 4, 5]

echo x.map do (x: int) -> int: x + 5