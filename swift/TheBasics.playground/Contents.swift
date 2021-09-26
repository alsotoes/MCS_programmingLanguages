//: # Constants and Variables
//: ### Use let to create a constant
let cantChangeMe = 10
//: This is a compile time error: 
//cantChangeMe = 20
//: ### Use var to create a variable
var youCanChangeMe = "Hello"
youCanChangeMe = "World"
//: ### Use type annotation to specify a type
var anInteger : Int
anInteger = 20

var aRealnumber : Double
aRealnumber = 2.1416
//: # Collections
//: ### Arrays
let integerArray = [1,2,3,4]    //Mutable array
var floatArray = [Float]()      //Inmutable array
floatArray.append(12.3)
floatArray.append(15.7)
//: ### Sets
var music1: Set = ["Rock", "Classical", "Hip hop"]
var music2: Set = ["Regueton", "Rock"]
music1.intersection(music2)
music2.union(music1)
//: ### Dictionaries
var namesOfIntegers: [Int: String] = [1: "One", 2: "Two"]
namesOfIntegers[2]
namesOfIntegers[3] = "three"
//: # String manipulation
//: ### Concatenate using the "+" operator
var str1 = "Hello"
var str2 = "World"
var str = str1 + str2
//: ### Use String interpolation to print something with style
print("Interpolate \(str1) and \(str2)")
//: # Tuples
var Tuple1 = (12.4, "EOL", 503)
Tuple1.0
Tuple1.1
Tuple1.2

var Tuple2 = (Floating: 12.4, String:"EOL", Integer:503)
Tuple2.Floating
Tuple2.String
Tuple2.Integer