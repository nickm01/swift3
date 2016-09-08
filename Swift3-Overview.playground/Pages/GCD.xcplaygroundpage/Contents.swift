/*: 
 [Previous](@previous) [Next](@next)
# GCD Rename: Considerably simpler!
## [SE-0088](https://github.com/apple/swift-evolution/blob/master/proposals/0088-libdispatch-for-swift3.md): Modernize libdispatch for Swift 3 naming conventions

*/
import Foundation

/* Swift 2
 dispatch_async(dispatch_get_main_queue()) {print("hello")} */

// Swift 3
 DispatchQueue.main.async {print("hello")}



/* Swift 2
 let delayTime = dispatch_time(dispatch_time_t(DISPATCH_TIME_NOW),
 Int64(1 * Double(NSEC_PER_SEC)))
 dispatch_after(delayTime, dispatch_get_main_queue()) {
 print("delayed print")
 }
*/

// Swift 3
 DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
    print("delayed print")
 }



/* Swift 2
dispatch_async(dispatch_get_global_queue(Int(QOS_CLASS_UTILITY.value), 0)) {
    print("Utility priority")
} */

// Swift 3
DispatchQueue.global(qos: .utility).async {
    print("Utility priority")
}

//: [Previous](@previous) [Next](@next)
