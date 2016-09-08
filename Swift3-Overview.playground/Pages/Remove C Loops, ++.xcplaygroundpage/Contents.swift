/*:
 [Previous](@previous) [Next](@next)
 # Remove ++, --, c-style loops
 ## [SE-0004](https://github.com/apple/swift-evolution/blob/master/proposals/0004-remove-pre-post-inc-decrement.md) & [SE-0007](https://github.com/apple/swift-evolution/blob/master/proposals/0007-remove-c-style-for-loops.md)

 */
import Foundation

var index = 0
/* Swift 2 
index++
*/

// Swift 3
index += 1 // 👍🏻




let array = [1,2,3,4,5]

/* Swift 2
for var i = 0 ; i < 5 ; i++ {
    print(array[i])
} */

// Swift 3
for index in 0 ..< 5 {print(array[index])}

// or
array.forEach({print($0)})

//: [Previous](@previous) [Next](@next)
