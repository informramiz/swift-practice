import Foundation

var str = "Hello, playground"
print("string \(str) has total \(str.count) characeters")
print("first character is \(str.first!) and last character is \(str.last!)")

print("upper cased: \(str.uppercased())")
print("reversed: \(String(str.reversed()))")

func checkLength(msg: String) -> Bool {
    return msg.count >= 10 && msg.count <= 10000
}

func isPalindrome(input: String) -> Bool {
    return input == String(input.reversed())
}

print("aba is palindrome: \(isPalindrome(input: "aba"))")

var hello = "Hello"
var world = "World"
hello.append(" ")
hello.append(world)

print(hello)


//replacing occurrences
let verbose = "We hope you are very excited to learn Swift. It's a very fun and very useful skill. Soon enough, you'll be writing your very own app!"
let better = verbose.replacingOccurrences(of: "very", with: "")
