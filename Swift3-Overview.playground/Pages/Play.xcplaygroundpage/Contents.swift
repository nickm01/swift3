//import UIKit
//
//class ViewController: UIViewController {
//}
//
//extension ViewController: UITableViewDataSource, UITableViewDelegate {
//    
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//    
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return UITableViewCell()
//    }
//}
//
//func hello() {
//    let a = ViewController()
//    let x = a.tableView(UITableView(), cellForRowAt: IndexPath(row: 1, section: 1))
//    print(x)
//}

func myfunc(param1: String, param2: String) {
    print("funky")
}

func myfunc2(_: String, param2: String) {
    print("funky")
}



func myfunc3() {
    myfunc(param1: "1", param2: "2")
}


//class myClass {
//    static let myString = "123"
//    func hello() {
//        print(Self.myString)
//    }
//}

