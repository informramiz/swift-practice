import Foundation

//var dictionary = ["Ramiz1" : "Raja"]
////remove key + value pair and return the value against given
//let oldValue = dictionary.removeValue(forKey: "Ramiz1")
////create a new key Ramiz and assign oldValue to it
//dictionary["Ramiz"] = oldValue
//print(dictionary)
//
////Optionals
//var education: String? = "BS"
//
////if let: binding
//if let education = education {
//    print("Education is: \(education)")
//} else {
//    print("Education is nil")
//}
//
////default value unwrapping
//let validEducationField = education ?? ""
//print("Valid education field: \(validEducationField)")
//
////forced unwrapping
//let forcedUnwrapedEducation = education!
//print("Forced unwrapped education: \(forcedUnwrapedEducation)")


class PoliceOfficer {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
