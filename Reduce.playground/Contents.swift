// Reduce function takes a collection and returns a single output
import UIKit

var evens = [Int]()

// MARK: imperative style

for i in 1...10 {
    if i % 2 == 0 {
        evens.append(i)
    }
}
//print(evens)

var evenSum = 0
for i in evens {
    evenSum += i
}
print(evenSum)