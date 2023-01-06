#[
    Write a program that defines an array of integers called numbers and a function called is_even
    that takes in an integer and returns a boolean indicating whether the integer is even.
    Then, use the filter function to create a new array called even_numbers that contains only the even elements from the numbers array.
    Print out the even_numbers array.
]#

import sequtils

proc is_even(x: int): bool =
    return x mod 2 == 0

let numbers = [1, 2, 3, 4, 5, 8, 10, 20]

echo filter(numbers, is_even)

# alternate solution
echo numbers.filter do (x: int) -> bool: x mod 2 == 0