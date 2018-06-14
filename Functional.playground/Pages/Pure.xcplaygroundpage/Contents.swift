//: # Functional Programming:
//: [Playground to accompany Functional Programming in Swift post](https://troz.net/post/2018/functional-programming/)
//:

import Foundation

class DamageDealer {
    var damageDone: Int = 0
    var timeTaken: TimeInterval = 0

    func damagePerSecond() -> Double {
        if timeTaken == 0 {
            return 0
        }
        let dps = Double(damageDone) / timeTaken
        if dps < 0 {
            return 0
        }
        return dps
    }
}

let mage = DamageDealer()
mage.damageDone = 32
mage.timeTaken = 10

mage.damagePerSecond()


extension DamageDealer {

    func damagePerSecondPure(damage: Int, time: TimeInterval) -> Double {
        if time == 0 {
            return 0
        }
        let dps = Double(damage) / time
        if dps < 0 {
            return 0
        }
        return dps
    }

}

mage.damagePerSecondPure(damage: mage.damageDone, time: mage.timeTaken)

//: [Next](@next)
