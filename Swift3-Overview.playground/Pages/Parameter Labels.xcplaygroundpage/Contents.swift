/*:
 [Previous](@previous) [Next](@next)
 # Consistent Parameter Labelling
 ## [SE-0046](https://github.com/apple/swift-evolution/blob/master/proposals/0046-first-label.md): Establish consistent label behavior across all parameters including first labels

 First parameter acts like all other parameters with the internal name exposed as a label by default
*/
import UIKit

/* Swift 2
 func buildWall(length length: Int) {
    print("the wall")
 }
 buildWall(length: 1000)
*/

// Swift 3
func buildWall(length: Int) {
    print("the wall")
}
buildWall(length: 1000)







class MyViewController: UITableViewController {
    
    /* Swift 2
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 123
    } */
    
    // Swift 3
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    /* Swift 2
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    } */
    
    
    // Swift 3
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    /* Swift 2
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return UITableViewCell()
    } */
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}


//: [Previous](@previous) [Next](@next)
