#[
    Define a procedure `counter` that returns a closure that, when called, increments a count variable and returns its new value.
]#

proc counter(): auto =
    var count = 0

    return proc(): int =
        count += 1
        result = count

let myCounter = counter()

echo myCounter()
echo myCounter()
echo myCounter()