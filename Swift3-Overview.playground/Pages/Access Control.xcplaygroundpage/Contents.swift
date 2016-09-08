/*: 
[Previous](@previous) [Next](@next)
# Access Control
## [SE-0025](https://github.com/apple/swift-evolution/blob/master/proposals/0025-scoped-access-level.md) & [SE-0117](https://github.com/apple/swift-evolution/blob/master/proposals/0117-non-public-subclassable-by-default.md) Levels: open > public > internal > fileprivate > private
 
## Swift 2
- public
- internal (default)
- private
## Swift 3
- open : fully available
- public : can not be subclassed/overriden outside of module
- internal : access only within module
- fileprivate : physical file access only (the new "private")
- private: access only to scope (eg within class or struct etc)
 @testable > unit tests have full access to open/public/internal
 
 [Thoughts](https://lists.swift.org/pipermail/swift-evolution/Week-of-Mon-20160808/026201.html)
 
> Use of final remains unchanged
 
*/

import Foundation

class MyClass {
    fileprivate func hello() {
        print("hello")
    }
}

class MyClass2 {
    private func hello() {
        print("hello")
    }
}

let a = MyClass()
a.hello()

let b = MyClass2()
//b.hello() // Error


//: [Previous](@previous) [Next](@next)
