import Foundation


//generic function
func printType<T>(_ argument: T) {
    print(type(of: argument))
}

printType("Udacity")
printType(4)
printType(4.0)
