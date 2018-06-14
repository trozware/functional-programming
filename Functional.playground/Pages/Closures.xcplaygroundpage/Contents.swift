//: [Previous](@previous)

import Foundation

func cube(_ number: Int) -> Int {
    return number * number * number
}
cube(3)


func square(_ number: Int) -> Int {
    return number * number
}
square(3)


func doCalculation(_ number: Int, calculation: (Int) -> Int) -> Int {
    return calculation(number)
}

doCalculation(7, calculation: square)
doCalculation(4, calculation: cube)


let result = doCalculation(6, calculation: { number in
    return number * 12
})
result

doCalculation(16) { number in
    return number % 3
}



func checkName(_ name: String) -> Bool {
    return name.count > 3 && !name.contains(" ")
}

func checkPlayerNamesUsingFunction(names: [String]) -> [String] {
    let validNames = names.filter(checkName)
    return validNames
}

let allNames = [ "Woody", "Rex", "Slinky", "Buzz Lightyear", "Hamm" ]
let checkedNames = checkPlayerNamesUsingFunction(names: allNames)
