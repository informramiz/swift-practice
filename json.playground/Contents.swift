import Foundation

var json = """
{
    "food_name": "Lemon",
    "taste": "sour",
    "number of calories": 17
}
""".data(using: .utf8)!

struct Food: Codable {
    let foodName: String
    let taste: String
    let numberOfCalories: Int
    
    enum CodingKeys: String, CodingKey {
        case foodName = "food_name"
        case taste = "taste"
        case numberOfCalories = "number of calories"
    }
}

let jsonDecoder = JSONDecoder()
do {
    let food = try jsonDecoder.decode(Food.self, from: json)
    print(food)
} catch {
    print(error)
}


/*----------Arrays--------------*/
var jsonArrayStr = """
[
    {
        "title": "Groundhog Day",
        "released": 1993,
        "starring": ["Bill Murray", "Andie MacDowell", "Chris Elliot"]
    },
    {
        "title": "Home Alone",
        "released": 1990,
        "starring": ["Macaulay Culkin", "Joe Pesci", "Daniel Stern", "John Heard", "Catherine O'Hara"]
    }
]
""".data(using: .utf8)!

struct Movie: Codable {
    let title: String
    let released: Int
    let starring: [String]
}

do {
    let movies = try jsonDecoder.decode([Movie].self, from: jsonArrayStr)
    print(movies)
} catch {
    print(error)
}
