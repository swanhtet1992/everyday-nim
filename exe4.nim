#[
Longest Collatz sequence
]#

proc collatzConjecture(x: int): int =
    var cSeq = @[x]
    var y = x
 
    while y != 1:
        if y mod 2 == 0:
            y = y div 2
            cSeq.add(y)
        else:
            y = y*3 + 1
            cSeq.add(y)

    result = cSeq.len

var res = (longestLength: 0, startingNumber: 0)

for i in 2..100:
    var latest = collatzConjecture(i)
    if res.longestLength < latest:
        res.longestLength = latest
        res.startingNumber = i
echo res