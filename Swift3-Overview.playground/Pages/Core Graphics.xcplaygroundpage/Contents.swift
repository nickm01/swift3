/*:
 [Previous](@previous) [Next](@next)
# Core Graphics Simplification
## [SE-0044](https://github.com/apple/swift-evolution/blob/master/proposals/0088-libdispatch-for-swift3.md): Import as member for C APIs
 
C APIs and frameworks currently import into Swift as global functions and global variables. Interacting with these can feel awkward in Swift.*/
import UIKit
import CoreGraphics

/* Swift 2
 func rotationAround(offset: CGPoint, angle: CGFloat,
 transform: CGAffineTransform = CGAffineTransformIdentity)
 -> CGAffineTransform {
 var result = CGAffineTransformTranslate(transform, offset.x, offset.y)
 result = CGAffineTransformRotate(result, angle)
 return CGAffineTransformTranslate(result, -offset.x, -offset.y)
 }
*/

func rotationAround(offset: CGPoint, angle: CGFloat,
                    transform: CGAffineTransform = .identity)
    -> CGAffineTransform {
        return transform.translateBy(x: offset.x, y: offset.y)
            .rotate(angle)
            .translateBy(x: -offset.x, y: -offset.y)
}

/* Swift 2
 func trace(in context: CGContext, path: CGPath) {
 let red = CGColorCreateGenericRGB(1, 0, 0, 1)
 CGContextSaveGState(context)
 CGContextAddPath(context, path)
 CGContextSetStrokeColorWithColor(context, red)
 CGContextStrokePath(context)
 CGContextRestoreGState(context)
 }
*/

func trace(in context: CGContext, path: CGPath) {
    let red = UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor
    context.saveGState()
    context.addPath(path)
    context.setStrokeColor(red)
    context.strokePath()
    context.restoreGState()
}
//: [Previous](@previous) [Next](@next)
