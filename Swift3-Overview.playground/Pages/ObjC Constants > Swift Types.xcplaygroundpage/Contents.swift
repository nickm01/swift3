/*:
 [Previous](@previous) [Next](@next)
 # Clean Up Objective-C Constants and make them more Swifty
 ## [SE-0033](https://github.com/apple/swift-evolution/blob/master/proposals/0033-import-objc-constants.md): Import Objective-C Constants as Swift Types
 
 Objective-C constants end-up just *stringly* typed in Swift.  Make use of swifts type safety and import as enums/structs.
 
 */
import Foundation

/* Swift 2
let cal = NSCalendar(calendarIdentifier: "NSCalendarIdentifierGregorian")*/

// Swift 3
let cal = Calendar(identifier: .gregorian)





class myClass {
    init() {
        /* Swift 2
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(defaultsChanged), name: NSUserDefaultsDidChangeNotification, object: nil)*/
        // Swift 3
        NotificationCenter.default.addObserver(self, selector: #selector(defaultsChanged), name: UserDefaults.didChangeNotification, object: nil)
    }
    @objc func defaultsChanged(notification: NSNotification) {
        print("hello")
    }
}

//: [Previous](@previous) [Next](@next)
