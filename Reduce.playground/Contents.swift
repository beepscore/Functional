// reduce function takes a collection and returns a single output
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

// MARK: functional style

// reduce executes once per each element, accumulates result
evenSum = Array(1...10)
    .filter {(number) in number % 2 == 0}
    .reduce(0) {(total, number) in total + number}

print(evenSum)

// return the maximum value in an array
let maxNumber = Array(1...10)
.reduce(0) {(combinedMax, number) in max(combinedMax, number)}
print(maxNumber)


// return a string from an array of Int
let numbers = Array(1...10)
    .reduce("numbers: ") {(total, number) in total + "\(number) "}
print(maxNumber)

// Challenge: use reduce to convert array of digits into an integer
let digits = ["3", "1", "4", "1"]
let numberFromDigits = digits.reduce(0) {(result, digitString) in (10 * result) + Int(digitString)!}
print(numberFromDigits)