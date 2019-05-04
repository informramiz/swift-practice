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
