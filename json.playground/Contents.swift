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
