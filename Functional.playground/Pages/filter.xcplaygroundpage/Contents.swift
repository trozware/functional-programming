//: [Previous](@previous)

import Foundation

func checkPlayerNames(names: [String]) -> [String] {
    var validNames: [String] = []

    for name in names {
        if name.count > 3 && !name.contains(" ") {
            validNames.append(name)
        }
    }

    return validNames
}

let allNames = [ "Woody", "Rex", "Slinky", "Buzz Lightyear", "Hamm" ]
let checkedNames = checkPlayerNames(names: allNames)


func checkPlayerNamesUsingFilter(names: [String]) -> [String] {
    let validNames = names.filter { name in
        name.count > 3 && !name.contains(" ")
    }
    return validNames
}
let checkedNamesFilter = checkPlayerNamesUsingFilter(names: allNames)


func checkPlayerNamesUsingFilterShort(names: [String]) -> [String] {
    return names.filter { $0.count > 3 && !$0.contains(" ") }
}

let checkedNamesFilterShort = checkPlayerNamesUsingFilterShort(names: allNames)

//: [Next](@next)
