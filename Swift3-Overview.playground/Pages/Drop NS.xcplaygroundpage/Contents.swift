/*:
 [Previous](@previous) [Next](@next)
 # Drop NS Prefix + Fix Mutability with new Value Types
 ## [SE-0069](https://github.com/apple/swift-evolution/blob/master/proposals/0069-swift-mutability-for-foundation.md): Mutability and Foundation Value Types
 ## [SE-0086](https://github.com/apple/swift-evolution/blob/master/proposals/0086-drop-foundation-ns.md): Drop NS Prefix in Swift Foundation
 
 **Removal of NS Prefix from lots of different foundation types (swift only)**
 
 > NS is not going away if 
- Class is specifically for Objective-C (eg NSObject)
- Platform Specific and part of a framework (eg NSBackgroundActivity)
- Class has a value type equivalent (eg NSString, NSArray)... or planned to have (eg NSAttributedString)
- Other reasons

 **In addition, create value types from NS Classes to fix "mutability impedance mismatch)**
 - For Example: Date, Data, URL
 
 */
import Foundation

/* Swift 2
let url = NSURL.fileURL(withPath: "/my-file")*/

// Swift 3
let url = URL(fileURLWithPath: "/my-file")




/* Swift 2
 let timer = NSTimer(timeInterval: 10.0, target: self, selector: "countUp", userInfo: nil, repeats: true)
 NSRunLoop.currentRunLoop().addTimer(timer, forMode: NSRunLoopCommonModes)
 func countUp() {}
*/

// Swift 3
// Timer, Date, RunLoop all have NS Removed
let timer = Timer(fire: Date(), interval: 10.0, repeats: false) {_ in
    print("Look! No selectors!")
}
RunLoop.main.add(timer, forMode: .commonModes)




/* Swift 2
let myDate = NSDate()
let myOtherDate = myDate.dateByAddingTimeInterval(100)
*/
 
/* Swift 3... new value type, can now mutate Date*/
var myDate = Date()
myDate.addTimeInterval(60) // OK

//: [Previous](@previous) [Next](@next)
