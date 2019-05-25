import UIKit

var meal = "breakfast"

if meal == "breakfast" {
    print("Good morning with if")
} else {
    print("Hello with if\n")
}

switch meal {
case "breakfast":
    print("Good morning")
case "lunch":
    print("Good afternoon")
case "dinner":
    print("Good evening")
default:
    print("Hello")
}

for i in 1...10 {
    print("i = \(i)")
}

//half open range
for i in 1..<10 {
    print("i = \(i)")
}

//loop over string
for c in meal {
    print(c)
}

let i = 0
repeat {
    print("Hi, there")
} while i < 0

/*
Functions
*/
func printSubject(subject: String) {
    print("I love \(subject)")
}
printSubject(subject: "Ramiz")

func sum(a: Int = 2, b: Int = 3) -> Int {
    return a + b
}

print("sum = \(sum(a: 1, b: 2))")
print("sum = \(sum())")

func minus(_ a: Int = 2, _ b: Int = 3) -> Int {
    return a - b
}
let diff = minus(5, 1) 
print("diff = \(diff)")

//guard statements

func testGuard(isPlayerReady: Bool, playerAge: Int) {
    guard isPlayerReady else {
        print("Player is not ready")
        return
    }
    guard playerAge >= 18 else {
        print("Player age is less than 18")
        return
    }
    print("Player is ready")
}

testGuard(isPlayerReady: true, playerAge: 18)
