import Foundation

let website = "https://www.google.com"
var url = URL(string: website)
if let url = url {
    print("url: \(url)")
}

url?.appendPathComponent("us")

//UrlComponents from URL
let urlComponentsFromUrl = URLComponents(string: website)

//Building a URL using URLComponents, with hardcoded values
struct GoogleSearch {
    static let scheme = "https"
    static let host = "www.google.com"
    static let path = "/us"
    
    //keys
    enum ParameterKey: String {
        case mediaType = "mt"
    }
    
    //values for mediate types
    enum MediaTypes: String {
        case music = "1"
        case podcasts = "2"
        case mobileApps = "8"
    }
}

var googleUrl = URLComponents()
googleUrl.scheme = GoogleSearch.scheme
googleUrl.host = GoogleSearch.host
googleUrl.path = GoogleSearch.path
googleUrl.queryItems = [URLQueryItem(name: GoogleSearch.ParameterKey.mediaType.rawValue, value: GoogleSearch.MediaTypes.mobileApps.rawValue)]
print(googleUrl)
