//: [Previous](@previous)

import Foundation

func squareNumbers(_ numbers: [Int]) -> [Int] {
    var squares: [Int] = []

    for number in numbers {
        squares.append(number * number)
    }

    return squares
}

let numbers = [ 1, 2, 3, 4, 5, 6 ]

squareNumbers(numbers)


func squareNumbersUsingMap(_ numbers: [Int]) -> [Int] {
    let squares = numbers.map { $0 * $0 }
    return squares
}

squareNumbersUsingMap(numbers)


func squareRoots(_ numbers: [Int]) -> [Double] {
    let roots = numbers.map { number in
        sqrt(Double(number))
    }
    return roots
}

squareRoots(numbers)


func convertStringsToInts(_ strings: [String]) -> [Int] {
    let ints = strings.compactMap { return Int($0) }
    return ints
}

let strings = [ "1", "two", "", "0.34", "65", "-93", "4e8" ]

convertStringsToInts(strings)

//: [Next](@next)
