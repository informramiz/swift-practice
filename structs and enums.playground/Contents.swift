import UIKit

struct Student {
    let name: String
    var age: Int
    var school: String
}

struct Point2D {
    var latitude: Double = 0
    var longitude: Double = 0
}

var ramiz = Student(name: "Ramiz", age: 25, school: "Udacity")
var startPoint = Point2D(latitude: 5, longitude: 5)

func printStudent(_ student: Student) {
    print("\(student.name) is \(student.age) years old and attends \(student.school)")
}
printStudent(ramiz)

ramiz.age = 26
ramiz.school = "USC"

printStudent(ramiz)

struct Beaker {
    //static propery
    static var madeIn = "China"
    var volumeInMillis: Double
    //computed propery
    var volumeInOunces: Double {
        return volumeInMillis * 0.033814
    }
    
    //mutating function
    mutating func increaseCapacity() {
        volumeInMillis += 500
    }
}

let smallBeaker = Beaker(volumeInMillis: 700)
print("Small beaker volume in ounces: \(smallBeaker.volumeInOunces)")

//update static propery or struct property
Beaker.madeIn = "Russia"

//enums
enum Finger: Int {
    case thumb = 1
    case index
    case middle
    case ring
    case pinky
}

print("Thumb raw value: \(Finger.thumb.rawValue)")

let finger = Finger.ring

switch finger {
case .thumb:
    print("thumb")
case .index:
    print("index")
case .middle:
    print("middle")
case .ring:
    print("ring")
case .pinky:
    print("pinky")
}

//enum initialization with raw value
let pinkyFinger = Finger(rawValue: 5)

//associated values
enum ImageFilter {
    case sepia
    case horizontalGradient(from: UIColor, to: UIColor)
}

let gradient = ImageFilter.horizontalGradient(from: UIColor.blue, to: UIColor.green)
print(ImageFilter.sepia)
