//: Playground - noun: a place where people can play

import UIKit

var evens = [Int]()

// imperative style
for i in 1...10 {
    if i % 2 == 0 {
        evens.append(i)
    }
}
print(evens)

// functional style
func isEven(number: Int) -> Bool {
   return number % 2 == 0
}

// filter argument is boolean function isEven
// tutorial says "functions are just named closures"
evens = Array(1...10).filter(isEven)
print(evens)