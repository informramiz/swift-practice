import Foundation

func tryErrorGenerator() {
    let fileUrl = Bundle.main.bundleURL
    do {
        let content = try String(contentsOf: fileUrl, encoding: .utf8)
        print(content)
    } catch CocoaError.fileReadNoPermission {
        print("No read permission error")
    } catch is CocoaError {
        print("A CocoaError ocurred")
    } catch let error as NSError {
        print(error)
    }
}

tryErrorGenerator()
