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
