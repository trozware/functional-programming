//: [Previous](@previous)

import Foundation

func sumNumbers(_ numbers: [Int]) -> Int {
    var total = 0

    for num in numbers {
        total += num
    }

    return total
}

let numbers = [ 1, 2, 3, 4, 5, 6 ]

sumNumbers(numbers)


func sumNumbersUsingReduce(_ numbers: [Int]) -> Int {
    let total = numbers.reduce(0) { (cumulativeTotal, nextValue) in
        return cumulativeTotal + nextValue
    }
    return total
}

sumNumbersUsingReduce(numbers)


func sumNumbersReduceDebug(_ numbers: [Int]) -> Int {
    let total = numbers.reduce(0) { (cumulativeTotal, nextValue) in
        print("cumulativeTotal = \(cumulativeTotal)")
        print("nextValue = \(nextValue)")
        print("about to return \(cumulativeTotal) + \(nextValue) = \(cumulativeTotal + nextValue) which will become the next culmulative or the final value")

        return cumulativeTotal + nextValue
    }
    print("final result = \(total)")
    return total
}

let shortNumbers = [ 5, 3, 8 ]

sumNumbersReduceDebug(shortNumbers)


//: [Next](@next)
