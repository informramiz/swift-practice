class Movie {
    let title: String
    let director: String
    let releaseYear: Int
    
    init(title: String, director: String, releaseYear: Int) {
        self.title = title
        self.director = director
        self.releaseYear = releaseYear
    }
}

class MovieArchie {
    var movies: [Movie]
    
    init(movies: [Movie]) {
        self.movies = movies
    }
    
    func filterMoviesByYear(year: Int) -> [Movie] {
        var filteredArray = [Movie]()
        for movie in movies {
            if movie.releaseYear == year {
                filteredArray.append(movie)
            }
        }
        
        return filteredArray
    }
}

let movie1 = Movie(title: "Bride of Frankenstein", director: "James Whale", releaseYear: 1935)
let movie2 = Movie(title: "The Night Walker", director: "William Castle", releaseYear: 1964)

let movieArchive = MovieArchie(movies: [movie1, movie2])

movieArchive.filterMoviesByYear(year: 1964)
movieArchive.movies

class Guitar {
    let strings: Int
    let frets: Int
    
    init(strings: Int, frets: Int) {
        self.strings = strings
        self.frets = frets
    }
    
    func pluckString() {
        print("twang")
    }
}

class ElectronicGuitar: Guitar {
    var volumeLevel: Float = 1.0
    var toneLevel: Float = 0.0
    
    override func pluckString() {
        if volumeLevel > 0.7 {
            print("🎸🎸🎸 DRAOWWW")
        } else if volumeLevel > 0 {
            print("🎸 twang")
        } else { // volumeLevel is 0
            // Guitar's implementation of pluckString()
            super.pluckString()
        }
    }
}

let guitar = ElectronicGuitar(strings: 4, frets: 3)
guitar.pluckString()

//forced casting
print((guitar as ElectronicGuitar).toneLevel)

//safe
if let toneLevel = (guitar as? ElectronicGuitar)?.toneLevel {
    print(toneLevel)
}


/*------------------Protocol----------------- */
//define a set of requirements (methods, properties) for a particular piece of functionality.

protocol RandomNumberGenerator {
    static var name: String {get}
    
    init(name: String)
    func random() -> Double
}

class MyRandomNumberGenerator : RandomNumberGenerator {
    static var name: String = "MyGenerator"
    
    required init(name: String) {
        MyRandomNumberGenerator.name = name
    }
    
    func random() -> Double {
        return 0.1
    }
}

class AnotherNumberGenerator : MyRandomNumberGenerator {
    required init(name: String) {
        super.init(name: name)
    }
}

/***********************Extensions********************/
//extend the functionality of an existing class
extension MyRandomNumberGenerator : Equatable {
    static func == (lhs: MyRandomNumberGenerator, rhs: MyRandomNumberGenerator) -> Bool {
        return lhs.random() == rhs.random()
    }
    
    func printName() {
        print(MyRandomNumberGenerator.name)
    }
}

let numberGenerator = MyRandomNumberGenerator(name: "MyGenerator")
numberGenerator.random()
numberGenerator.printName()
