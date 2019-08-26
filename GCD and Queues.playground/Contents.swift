import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

let highPriorityGlobalQueue = DispatchQueue.global(qos: .userInteractive)
let lowPriorityGlobalQueue = DispatchQueue.global(qos: .background)

lowPriorityGlobalQueue.async {
    print("tock")
}
highPriorityGlobalQueue.async {
    print("tick")
}
