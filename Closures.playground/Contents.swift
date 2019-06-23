/*******************Closures*******************
 Self-contained blocks of functionality
 */
let numbers = [1, 4, 3, 2, 0, 1, 5]
//closure
let sortBy = {(n1: Int, n2: Int) -> Bool in
    return n1 > n2
}

numbers.sorted(by: sortBy)

//closure expression syntax
numbers.sorted(by: { (s1: Int, s2: Int) -> Bool in
    return s1 > s2
})

//as param type and return type can be inferred so we can write
numbers.sorted(by: {s1, s2 in return s2 > s1})

//single expression closures can implicity return the result so no need for return keyword
numbers.sorted(by: {s1, s2 in s2 > s1})

//Swift automatically assigns names to arguments
//by following naming convention: $0, $1, $2 ...
//so we can even omit arguments
numbers.sorted(by: {$0 > $1})

//Trailing Closure: If closure is the last/final argument of the function it
//can be written outside of paranthesis
numbers.sorted() {$0 > $1}

//If trailing closure is the only argument then there is no need for paranthesis
numbers.sorted {$0 > $1}

//Operator Methods: As Int type defines its specific implementation of '>' operator
//as a method and that method matches exactly what we need for sorted(by:) function
//so we can pass that method to sorted(by:) function
numbers.sorted(by: >)

//Auto closures: Automatically created to wrap an expression being passed to a function
let autoClosure = {
    let a = 1
    let b = 2
    a + b
}


enum CompassDirection: CaseIterable {
    case north, south, east, west
}

let closure = {(value: CompassDirection) in "\(value)"}
let result = CompassDirection.allCases.map(closure).joined(separator: ",")
print("Built-in map result: \(result)")

//I am writing my own implementation of the "map" method. I am going to use extensions as this is how the original
//map function is written as well.
extension Array {
    /**
     Goes through each element of array and transforms it to some type T according to the transform closure provided as input
     Input: Takes input a closure named transform that takes input the element of the array and transforms it to some type T
    */
    func myMap<T>(_ transform: (Element) -> T) -> [T] {
        //create a new array to hold the transformed array
        var transformedArray = [T]()
        //go through each element of array
        for a in self {
            //call the transform closure the transform element "a" into a value of type "T"
            transformedArray.append(transform(a))
        }
        return transformedArray
    }
}

//here I am going to use "myMap" extension function
let myMapResult = CompassDirection.allCases.myMap(closure).joined(separator: ",")
print("My map result: \(myMapResult)")
