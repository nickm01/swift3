/*:
[Previous](@previous) [Next](@next)
# Bang goes Bang as a Type
## [SE-0054](https://github.com/apple/swift-evolution/blob/master/proposals/0054-abolish-iuo.md): Abolish ImplicitlyUnwrappedOptional type

Appending ! to the type of a Swift declaration will give it optional type and annotate the declaration with an attribute stating that it may be implicitly unwrapped when used.

**!** no longer gives it a IUO type, but rather:
1. the declaration has optional type, and
1. the declaration has an attribute indicating that its value may be implicitly forced.
 
> Will still see <Type>! in auto-suggest, but consider it differently.  And obviously we want to avoid ! where possible anyway.

 */
import Foundation

/* Swift 2
let x: Int! = 5     // x is Int!
let y = x           // y is Int!
let z = x + 0       // z is Int (force unwrapped)
let a = x!          // a is Int
*/

// Swift 3
let x: Int! = 5     // x is Int! (Int? with attribute of IUO)
let y = x           // y is Int?
let z = x + 0       // z is Int (force unwrapped)
let a = x!          // a is Int


/* Swift 2 - allowed
let arrayOfImplicitlyUnwrappedOptionals: [Int!] = [1,2,3] */

// Swift 3 - not allowed
// let arrayOfImplicitlyUnwrappedOptionals: [Int!] = [1,2,3]


//: [Previous](@previous) [Next](@next)
