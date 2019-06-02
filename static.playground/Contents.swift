import Foundation

//self usage
//static property
//static methods
class PoliceOfficer {
    //class/Type property
    static let minimumAllowedAge = 18
    //instance properties
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    //class method
    static func printMinimumAllowedAge() {
        print("Minimum allowed age for a police officer is: \(minimumAllowedAge)")
    }
}

//instance/object
let policeOfficer1 = PoliceOfficer(name: "Ramiz", age: 18)
let policeOfficer2 = PoliceOfficer(name: "Sep", age: 16)

print(PoliceOfficer.minimumAllowedAge)
PoliceOfficer.printMinimumAllowedAge()




//--------------------------------//

//Any vs AnyObject
let a = 10
let obj: AnyObject = a
//let primitive: Any = a
//
//print(policeOfficer.name)
