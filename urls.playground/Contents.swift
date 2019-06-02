import Foundation

let website = "https://www.google.com"
var url = URL(string: website)
if let url = url {
    print("url: \(url)")
}

url?.appendPathComponent("us")
