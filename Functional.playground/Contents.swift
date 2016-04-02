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

// filter is a "higher order function", it takes a function as an argument.
// https://en.wikipedia.org/wiki/Higher-order_function
// pass Bool function function isEven
// tutorial says "functions are just named closures"
evens = Array(1...10).filter(isEven)
print(evens)


// use inline closure instead of separate func isEven.
// Swift infers closure parameter "number" type is Int, closure return type is [Int]
// why does output say 11 times instead of 10?
evens = Array(1...10).filter {(number) in number % 2 == 0}
print(evens)

// use shorthand argument notation $0
// return elements that satisfy conditional
evens = Array(1...10).filter {$0 % 2 == 0}
print(evens)