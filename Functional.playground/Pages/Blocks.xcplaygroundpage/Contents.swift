//: [Previous](@previous)

import Foundation

// Dummy enums & functions to stop the function below giving errors
enum UserType { case admin, user, guest }
enum Sound { case welcome }
func showLoginScreen() {}
func displayUserData(for user: String) {}
func getPermissions(for user: String) -> UserType { return .user }
func populateMenus(for userType: UserType) {}
func loadInitialData(for user: String) {}
func playSound(_ sound: Sound) {}
////////////////////////////////////////////////////////////////////


func configureDisplay(for userId: String?) {
    guard let userId = userId else {
        showLoginScreen()
        return
    }

    displayUserData(for: userId)
    let userType = getPermissions(for: userId)

    populateMenus(for: userType)
    loadInitialData(for: userId)

    playSound(.welcome)
}

configureDisplay(for: "abc123")
configureDisplay(for: nil)



func displayDamage(damage: Int, target: String) {}

displayDamage(damage: 31, target: "Ogre")


func display(damage: Int, doneTo target: String) {}

display(damage: 42, doneTo: "Wolf")


func displayDamage(_ damage: Int, doneTo target: String) {}

displayDamage(42, doneTo: "Wolf")

//: [Next](@next)
