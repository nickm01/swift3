/*:
 [Previous](@previous) [Next](@next)
# Enum And Property Capitalization - lowerCamelCase
## Part of: [SE-0006](https://github.com/apple/swift-evolution/blob/master/proposals/0006-apply-api-guidelines-to-the-standard-library.md): Apply Swift API Guidelines
 
All enums cases and properties should now be capital case
This is part of a broader swift proposal, but is mentionned invidually here.

UpperCamelCase reserved now only for names of types and protocols

 **We all should shift to this new standard**
*/
import UIKit

/* Swift 2
let button = UIButton(type: .Custom) */

// Swift 3
let button = UIButton(type: .custom)


/* Swift 2
let label = UILabel()
label.textAlignment = .Center */

// Swift 3
let label = UILabel()
label.textAlignment = .center



/* Swift 2
let myColor = UIColor.brown().CGColor*/

// Swift 3
let myColor = UIColor.brown().cgColor



/*:
**Also changes the way optionals work.  An optional is basically just an enum with 2 values... some(wrapped) or none.
these are now lowerCamelCase**
*/
let myString: String? = "hello"
if case let .some(String) = myString {
    print(myString)
}

//: [Previous](@previous) [Next](@next)
