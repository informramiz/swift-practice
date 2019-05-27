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

//generic types
protocol Animal {
    var name: String { get }
    static var commonName: String { get }
}

struct Whale : Animal {
    let name: String
    static var commonName = "Whale"
}

struct Dolphin: Animal {
    let name: String
    static var commonName = "Dolphin"
}

struct ZooExhibit<AnimalType: Animal> {
    let animals: [AnimalType]
    
    func tourExhibit() {
        print("Welcome to \(AnimalType.commonName) exhibit")
        for animal in animals {
            print("Say hello  to \(animal.name)")
        }
    }
}

let whaleZoo = ZooExhibit(animals: [Whale(name: "Missi sippi"), Whale(name: "Marvan")])
whaleZoo.tourExhibit()
print()

let dolphinZoo = ZooExhibit<Dolphin>(animals: [Dolphin(name: "cutie pye"), Dolphin(name: "Charlie")])
dolphinZoo.tourExhibit()


//----------class based extension and generics----------
protocol Feedable {
    static let favoriteFood: String
}

extension Dolphin: Feedable {
    static var favoriteFood = "fish"
}

extension ZooExhibit where AnimalType: Feedable {
    func feedAnimals() {
        for animal in animals {
            print("You feed \(animal.name) some \(animal.favoriteFood)")
        }
    }
}

dolphinZoo.feedAnimals()

//generic sub-classing
class ZoomExhibitClass<AnimalType: Animal> {
    let animals: [AnimalType]
    
    init(animals: AnimalType) {
        self.animals = animals
    }
    
    func tourExhibit() {
        print("Welcome to \(AnimalType.commonName) exhibit")
        for animal in animals {
            print("Say hello  to \(animal.name)")
        }
    }
}

class TravelingExhibit<AnimalType: Animal>: ZoomExhibitClass<AnimalType> {
    override func tourExhibit() {
        print("Can't exhibit today, I am travelling!!! :p")
    }
}
