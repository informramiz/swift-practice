//Optionals: A type which can have a value or nil (no value)
var value: Int?
let str = "123"
value = Int(str)

//if let unwrapping of optionals
if let value = value {
    let sum = 2 + value
    print("sum = \(sum)")
} else {
    print("string parsing failed")
}

//optionals chaining
struct Tail {
    var length: Int
}
struct Animal {
    var name: String
    var tail: Tail?
    
    //constructor
    init(name: String, tailLength: Int?) {
        self.name = name
        
        //if tail length is provided then create Tail object otherwise assign nil
        if let tailLength = tailLength {
            tail = Tail(length: tailLength)
        } else {
            tail = nil
        }
    }
}

let elephant = Animal(name: "Elephant", tailLength: 5)
//use optional chaining (appending a ? to the property name) to access the optional tail property
if let tailLength = elephant.tail?.length {
    print("Animal \(elephant.name) has tail length = \(tailLength)")
} else {
    print("Animal \(elephant.name) has no tail")
}

//Nil coalescing operator `??`: Gives you a way to provide default value for an Optional
print("Animal \(elephant.name) has tail length = \(elephant.tail?.length ?? 5)")

//unsafe unwrapping
print("Animal \(elephant.name) has tail length = \(elephant.tail!.length)")

//Implicitly unwrapping: When we are sure the value will not be nil
var parsedInt: Int!
parsedInt = Int("123")
print("sum is \(parsedInt + 2)")
