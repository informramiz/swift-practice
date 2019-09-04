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


/*----------Nested Objects--------------*/
var jsonNested = """
{
    "name": "Neha",
    "studentId": 326156,
    "academics": {
        "field": "iOS",
        "grade": "A"
    }
}
""".data(using: .utf8)!

struct Student: Codable {
    let name: String
    let studentId: Int
    let academics: Academics
}

struct Academics: Codable {
    let field: String
    let grade: String
}

do {
    let nestedObjects = try jsonDecoder.decode(Student.self, from: jsonNested)
    print(nestedObjects)
} catch {
    print(error)
}



//Flicker API for photos
import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
let flickerPhotos = """
"photos":{
"page":1,
"pages":1,
"perpage":250,
"total":"36",
"photo":[
{
"id":"47964765217",
"owner":"54915149@N06",
"secret":"d06af9f186",
"server":"65535",
"farm":66,
"title":"Boerhavia elegans",
"ispublic":1,
"isfriend":0,
"isfamily":0,
"url_m":"https://live.staticflickr.com/65535/47964765217_d06af9f186.jpg",
"height_m":"333",
"width_m":"500"
},
{
"id":"47964764862",
"owner":"54915149@N06",
"secret":"aeef31765d",
"server":"65535",
"farm":66,
"title":"Boerhavia elegans",
"ispublic":1,
"isfriend":0,
"isfamily":0,
"url_m":"https://live.staticflickr.com/65535/47964764862_aeef31765d.jpg",
"height_m":"333",
"width_m":"500"
}
]
}
}
""".data(using: .utf8)

struct FlickerPhotos {
    
}
