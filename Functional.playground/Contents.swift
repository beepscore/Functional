//: Playground - noun: a place where people can play

import UIKit

// MARK: Filter

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

/**
 As a learning exercise, implement a method similar to the built in filter.
 This is similar to previous function definition isEven, but is more general.
 myFilter has a parameter to pass in a predicate function such as isEven
 - parameter source: is an array of generic type T
 - parameter predicate: function that takes argument of generic type T and returns Bool
 - returns: array of generic type T with elements selected from source by the predicate
 */
func myFilter<T>(source: [T], predicate:(T) -> Bool) -> [T] {
    var result = [T]()
    for i in source {
        if predicate(i) {
            result.append(i)
        }
    }
    return result
}

// Call myFilter with named function isEven
evens = myFilter(Array(1...10), predicate: {x in isEven(x)})
print(evens)

// Call myFilter with inline closure and shorthand notation instead of separate func isEven.
evens = myFilter(Array(1...10)) {$0 % 2 == 0}
print(evens)

/**
 Tutorial challenge- add a custom filter method to Array.
 Use a class extension, similar to Objective C category.
 https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Extensions.html
 hint: You can extend Array, but not Array<T>.
 */
extension Array {

    /**
     This is an instance method so don't declare as static.
     As a learning exercise, implement a method similar to the built in filter.
     - parameter predicate: function that takes argument of generic type Element and returns Bool
     - returns: array of generic type Element with elements selected from source by the predicate
     */
    func beepFilter(predicate:(Element) -> Bool) -> [Element] {
        var result = [Element]()
        for i in self {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
    
}

evens = Array(1...10).beepFilter({x in isEven(x)})
print(evens)


// MARK: Reduce
