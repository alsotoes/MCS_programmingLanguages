//: # Closures
//: ### Functions are types
func add(a:Int, b:Int) -> Int
{
    return a + b
}

var mathFunction: (Int,Int) -> Int = add
print(mathFunction(1,2))
//: ### Functions are actually special cases of closures
mathFunction = {(a:Int, b:Int) -> Int in return a - b}
print(mathFunction(1,2))

var cl = {(name:String) in print("Hello " + name)}
print(cl("you"))
//: ### Clusures can be used in some standard swift functions
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
var reversedNames = names.sorted(by: { (s1, s2) -> Bool in s1 > s2 } )
print(reversedNames)