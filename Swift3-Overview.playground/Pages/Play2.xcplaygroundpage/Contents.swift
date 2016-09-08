import Foundation

func myfunc(param1: String, param2: String) {
    print("funky")
}

func myfunc2(_: String, param2: String) {
    print("funky func")
}

func myfunc3(externalname internalName:String) {
    print("funky func func")
}

myfunc2("hello", param2: "hello")
myfunc3(externalname: "Hello")
