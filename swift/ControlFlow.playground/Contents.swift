//: # Control Flow
//: ### The For loop is like a foreach loop
let anArray = [15,2,78,123,3,1,2]
let str = "This is a nice string 😀"

for i in anArray{
    print(i)
}

for char in str.characters{
    print(char)
}
//: Use range operator to use subscrit access
var newArray = [Int]()
for i in 0..<anArray.count{
    newArray.append(anArray[i] * 2)
}
anArray
//: ### The while loop is like a the while in C
var j = 0
while anArray[j] < 100 {
    j += 1
}
print(anArray[j])
//: ### In Swift the Do While is called repeat-while
j = 0
repeat {
    j += 1
}while anArray[j] < 100
print(anArray[j])
//: ### Conditional statments
//: If statment
let flag = true
let point = (x:12,y:5)

if flag{
    print("flag true")
}
else{
    print("flag false")
}

if point.y > 0 {
    print("Positive y axes")
}
//: Switch statment
//: Switch in swift work great when cheking Tuples
switch point {
case (_, 0):
    print("on the x-axis with")
case (0, _):
    print("on the y-axis with a)")
case (_, _):
    print("somewhere else at (x,y)")
}

switch point {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}