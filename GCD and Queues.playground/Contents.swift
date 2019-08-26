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


//custom queues
let q1 = DispatchQueue(label: "queue1")
let q2 = DispatchQueue(label: "queue2")
let q3 = DispatchQueue(label: "queue3")

q1.async {
    print(1)
}

q2.async {
    print(2)
}

q3.async {
    print(3)
}
