
//-------------Arrays-------------------

//empty array
var numbers = Array<Double>()

//short hand notation for empty array
var moreNumbers = [Double]()
//array initialization
moreNumbers = [1, 2, 3, 4]

//direct literal array initialization
let differentNumbers = [1, 2.0, 3, 4]

//array concatenation
let concatednatedArray = moreNumbers + differentNumbers

var musicians = ["Neil Young", "Kendrick Lamar", "Flo Rida", "Fetty Wap"]
musicians.append("Ramiz")
print(musicians)

musicians.insert("Raja", at: 2)
print(musicians)

musicians.remove(at: 3)
print(musicians)
print("Array length is : \(musicians.count)")

print(musicians[2])

//this creates a deep copy so chaning musicians will not affect musiciansCopy
let musiciansCopy = musicians

musicians.remove(at: 0)
print(musicians)
print(musiciansCopy)

let intArray = [1, 2, 3, 4, 5]
var sum = 0
for value in intArray {
    sum += value
}
print(sum)


//print elements of array, each on separate line
func printElements(array: [Int]) {
    for value in array {
        print(value)
    }
}

func removeElements(array: [Int], n: Int) -> [Int] {
    if n > array.count {
        return [Int]()
    }
    
    var newArray = array
    newArray.removeFirst(n)
    return newArray
}


//Dictionaries
//empty dictionary
var emptyDictionary = [String:String]()
var phoneNumbers = ["Ramiz": "123443", "Raja": "345454"]
phoneNumbers["Ramiz"]

for pair in phoneNumbers {
    print("\(pair.key) has phone number: \(pair.value)")
}

//adding values
phoneNumbers["Adam"] = "3445-4454"
print(phoneNumbers)

//removing values, assign nil to remove a value
phoneNumbers["Ramiz"] = nil
print(phoneNumbers)

print("phone numbers count = \(phoneNumbers.count)")

//update a value: Updates value if exists and returns the old value as Optional
//why Optional? Because in case key does not exists then it adds the key/value pair
//and returns nil
let oldValue = phoneNumbers.updateValue("3245454", forKey: "Raja")
print(oldValue ?? "No value")


//Accessing a value from dictionary returns a Optional
//Why Optional? Because the key/value pair may not be present so in
//this case nil is returned
let phoneNumberOfRaja = phoneNumbers["Raja"]

//unwrap with if let notation
if let phoneNumberOfRaja = phoneNumberOfRaja {
    print("Raja's phone number is \(phoneNumberOfRaja)")
} else {
    print("Raja's phone number not found")
}

func frequence(numbers: [Int]) -> [Int: Int] {
    var frequenceDictionary = [Int: Int]()
    for number in numbers {
        var numberFrequency = frequenceDictionary[number] ?? 0
        numberFrequency += 1
        frequenceDictionary.updateValue(numberFrequency, forKey: number)
    }

    
    return frequenceDictionary
}

let input = [1, 3, 1, 1, 2, 7, 3, 5, 8, 5, 4, 9]
let numbersFrequency = frequence(numbers: input)
print(numbersFrequency)

//-------------Dictionaries-------------------

//empty dictionary
var newEmptyDictionary = [String: Bool]()
newEmptyDictionary = ["Anchovies": false, "Coconut": true, "Cilantro": true, "Liver": false]

var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton":"Socks",
                            "George Bush":"Miss Beazley", "Ronald Reagan":"Lucky"]

presidentialPetsDict["George H.W. Bush"] = "Millie"
presidentialPetsDict["George Bush"] = nil
print(presidentialPetsDict)

//deep copy
var presidentialDogs = presidentialPetsDict
presidentialDogs["Bill Clinton"] = "Buddy"
print(presidentialDogs)

print("Michele Obama walks \(presidentialDogs["Barack Obama"]!) every morning.")

var studioAlbums = ["Led Zeppelin":1969, "Led Zeppelin II":1969, "Led Zeppelin III":1970,
                    "Led Zeppelin IV":1971, "House of the Holy":1973, "Physical Graffiti":1975,
                    "Presence":1976, "In Through the Out Door":1979, "Coda":1982]

var albumsCountByLedZeppelin = 0
for pair in studioAlbums {
    if pair.key.hasPrefix("Led Zeppelin") {
        albumsCountByLedZeppelin += 1
    }
}

print("Led Zeppelin's albums count: \(albumsCountByLedZeppelin)")


//-------------Sets-------------------
//Remember: Sets contains distinct elements (unordered but distincts)

//literal syntax
var cutlery: Set = ["fork", "knife", "spoon"]
var characters: Set<Character> = ["A", "B", "C"]

//initializer syntax
var trees = Set<String>()

//insert items
trees.insert("Neem")
trees.insert("Peepal")
trees.insert("kiker")

//remove items
trees.remove("kiker")
print(trees)

func countDistinct(numbers: [Int]) -> Int {
    return Set<Int>(numbers).count
}

let distinctCount = countDistinct(numbers: [20, 10, 10, 30, 20])
print("distinct count: \(distinctCount)")
