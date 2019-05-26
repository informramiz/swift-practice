import Foundation

func tryErrorGenerator() {
    let fileUrl = Bundle.main.bundleURL
    do {
        let content = try String(contentsOf: fileUrl, encoding: .utf8)
        print(content)
    } catch let error {
        print(error)
    }
}

tryErrorGenerator()
