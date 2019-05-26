import Foundation

//self usage
//static property
//static methods
class PoliceOfficer {
    static let minimumAllowedAge = 18
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    static func printMinimumAllowedAge() {
        print("Minimum allowed age for a police officer is: \(minimumAllowedAge)")
    }
}
