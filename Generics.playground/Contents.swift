import Foundation


//generic function
func printType<T>(_ argument: T) {
    print(type(of: argument))
}

printType("Udacity")
printType(4)
printType(4.0)


//type conformance
enum Position: Int {
    case first, second
}

func printRaw<T: RawRepresentable>(arg: T) {
    print(arg.rawValue)
}

printRaw(arg: Position.first)
