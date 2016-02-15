//: Playground - noun: a place where people can play

import UIKit


// "Optionals"  using "?" to let var compatible nil
var avc: Int? = 15
avc = nil
avc = 22

// "Optionals"  using "if let"  to convert non-optional
if let abc = avc {
    print(abc)
}
else {
    print("avc=nil")
}


// Converting string shuld using "Optionals" to protect nil situation
var str : String = "wen"
var strInt : Int?

strInt = Int(str)

if(strInt==nil) {
    print("it is nil")
}
else {
    print("It is no nil")
}

// functions in Swift
func testOut(s:String)->Int
{
    return s.characters.count
}
func testWithOutPut(s:String)
{
    print(s)
}
testWithOutPut("Wen")
print("Length is :\(testOut("Wen"))")


// first-class implementation
func outPut(s:String)
{
    print(s)
}


func printEvet(f:String->(), s:[String])
{
    for i in s[0..<s.count] {
        f(i)
    }
}

var test = ["a","b"]

let f1 = outPut
printEvet(f1, s: test)


//Enumerations
enum MobileDevice: String
{
    case iPhone = "iPhone", Android = "Android"
    
    func name()->String
    {
        return self.rawValue
    }
}

let m = MobileDevice.Android
print(m.name())



