/*:
 [Previous](@previous) [Next](@next)
# Grand Renaming
## [SE-0006](https://github.com/apple/swift-evolution/blob/master/proposals/0006-apply-api-guidelines-to-the-standard-library.md) & [SE-0023](https://github.com/apple/swift-evolution/blob/master/proposals/0023-api-guidelines.md) & [SE-0059:](https://github.com/apple/swift-evolution/blob/master/proposals/0059-updated-set-apis.md) create a swifty api... **the Grand Renaming🍾**

Refer to [API Guidelines](https://swift.org/documentation/api-design-guidelines/)

- **CLARITY AT POINT OF USE**
- **CLARITY OVER BREVITY**
*/
/*:
---
 ### Clear Usage
- Include all the words needed to avoid ambiguity
- Omit needless words
- Name variables, parameters, and associated types according to their roles, rather than their type constraints.
- Compensate for weak type information to clarify a parameter’s role
> Omit needless words will probably be the most obvious change to the API
*/
import UIKit
/*: 
---
### Argument Labels */
//If the first argument is part of a prepositional phrase, give it a label
republicans.removePoliticans(withName: "Donald")

// If the first argument is *not* part of a grammatical phrase, give it a label
func x() {
    let viewController = UIViewController()
    viewController.dismiss(animated: true) //label
}

// Otherwise, do *not* use a first argument label
embarrasments.insert("boris", at: embarrasments.startIndex) //no label

/*:
 ---
 ### Fluent Usage */
// Use imperative verbs to describe the side effect*/
republicans.politicians.reverse()

func y() {
    let viewController = UIViewController()
    viewController.present(UIViewController(), animated: true, completion: {})
}

// Use nouns to describe the result
let firstPolitician = republicans.politicians.first

/*:
 ---
 ### Mutating/Non-mutating Function naming */
//Operation described by a Verb : Mutating = Imperative, Non-mutating = ed/ing */
republicans.removePoliticans(withName: "George")
republicans.politicians.reverse()

let conservatives = republicans.removingPoliticians(withName: "Donald")
let teaParty = republicans.politicians.reversed()

//Operation Described by a Noun: Non-mutating = Noun, Mutating = "form" + Noun*/


/*:
 ---
 ### Protocols. 
 2 cases:*/
//What something is : should be noun
protocol PoliticialHack {
    func talkAlot()
}
//Capability: -able
protocol Electable {
    func kissBaby()
}
/*:
 ---
 ### Terminology
- Avoid obscure terms
- Stick to the established meaning if you do use a term of art.
- Avoid abbreviations (especially non-standard)
- Embrace Precedent (don't optimize for total beginner)
*/
/*:
 ---
 ### General Examples */
var myStrings = ["build","a","wall"]

//let sortedArray = myStrings.sort()
let sortedArray = myStrings.sorted()
//: > CAREFUL: .sort is now an in-place sort.
//let color = UIColor.whiteColor
let color = UIColor.white

//let date = NSDate().dateByAddingTimeInterval(60)
let date = Date().addingTimeInterval(60)

//myStrings.appendContentsOf:(["paid","by","mexico"]) */
myStrings.append(contentsOf: ["paid","by","mexico"])

// let min = myStrings.minElement()
let min = myStrings.min()

//: [Previous](@previous) [Next](@next)





