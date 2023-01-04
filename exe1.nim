#[
Collatz conjecture is a popular mathematical problem with simple rules. First pick a number.
If it is odd, multiply it by three and add one; if it is even, divide it by two.
Repeat this procedure until you arrive at one.
E.g. 5 → odd → 3*5 + 1 = 16 → even → 16 / 2 = 8 → even → 4 → 2 → 1 → end!
Pick an integer (as a mutable variable) and create a loop which will print every step of the Collatz conjecture. (Hint: use div for division)
]#

proc collatzConjecture(x: int): string =
    result = "start → " & $x
    
    var y = x

    while y != 1:
        if y mod 2 == 0:
            y = y div 2
            result.add(" → even")
        else:
            y = y*3 + 1
            result.add(" → odd")
        
        result.add(" → " & $y)

echo collatzConjecture(5)
# start → 5 → odd → 16 → even → 8 → even → 4 → even → 2 → even → 1