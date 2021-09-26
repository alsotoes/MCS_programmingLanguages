//: # Functions
func addNumbers(a:Int, b:Int) -> Int{
    return a + b
}

addNumbers(a: 2, b: 3)
//: We can ommit the name of the parameters we calling a function using the "_" keyword
func addNumbers2(_ a:Int, _ b:Int) -> Int{
    return a + b
}
addNumbers2(2, 3)
//: ### Multiple return values
//: Return multiple values is possible thanks to Tuples
func addByOne(a:Int, b:Int) -> (Int, Int){
    return (a + 1, b + 1)
}

let res = addByOne(a: 2, b: 8)
res.0
res.1
//: ### Send multiple parameters using Verdict Parameters
func sendMultiple(_ val:Double...){
    for num in val{
        print(num)
    }
}
sendMultiple(12.5, 8.3, 4.5)
//: ### Use In-Out Parameter to send parameters by reference
func addNumbers3(a: inout Int, b: inout Int){
    a += 1
    b += 1
}
var a = 3
var b = 4
addNumbers3(a: &a, b: &b)
print("a: \(a), b: \(b)")
//: # Classes
class RectanglueClass {
    
    var width:Int
    var height = 0
    
    init (w:Int, height:Int){
        width = w;
        self.height = height
    }
    
    func area() -> Int
    {
        return width * height
    }
}

//: A class is a ref type, soy you can have a let instance and still modify its properties
let obj = RectanglueClass(w: 3, height: 4)
obj.width = 4
obj.area()
//: # Structures 
//: Are almost as equal as classes, the have some differences like automatically-generated memberwise initializer
struct RectanglueStructure {
    
    var width:Int
    var height = 0
    var squere:Int{
        get{
            return self.height
        }
        set(value){
            self.height = value
            self.width = value
        }
    }
    
    func area() -> Int
    {
        return width * height
    }
}
var str = RectanglueStructure(width: 2, height: 5)
str.squere = 3
str.area()