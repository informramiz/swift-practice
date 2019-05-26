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


//this function propogates an error
func tryErrorThrower() throws {
    let fileUrl = Bundle.main.bundleURL
    do {
        let content = try String(contentsOf: fileUrl, encoding: .utf8)
        print(content)
    } catch let error as NSError {
        print(error)
        throw NSError(domain: "ErrorTesting", code: 0, userInfo: ["failure": error.localizedDescription])
    }
}

do {
    try tryErrorThrower()
} catch {
    print(error)
}

//try with optional return
func tryTryWithOptional() {
    let fileUrl = Bundle.main.bundleURL
    let content = try? String(contentsOf: fileUrl, encoding: .utf8)
    if let content = content {
        print(content)
    } else {
        print("file reading failed")
    }
}

tryTryWithOptional()

//-----------------------Custom Errors------------------
enum TakeOffError: Error {
    case planeNotWorking
    case lowOnFuel
    case runwayShort(minRunLengthRequired: Int)
}

func takeOff() throws -> Bool {
    throw TakeOffError.runwayShort(minRunLengthRequired: 150)
}

do {
    try takeOff()
} catch let error as TakeOffError {
    switch error {
    case let .runwayShort(minRunLengthRequired):
        print("Current runway is too short, min runway length is: \(minRunLengthRequired)")
    case .lowOnFuel:
        print("Plan is low on fuel")
    default:
        print("Plan not working")
    }
} catch {
    print(error)
}
