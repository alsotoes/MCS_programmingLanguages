//: # Casting
//: ### Cast Basic Types
let someInt = Int("23")
let someFloat = Float("43.21")
let someBool = Bool("true")
let someString = String(345.23)
//: ### Downcasting with as? or as!
class library{
    var title:String = ""
}

class movie: library{
    var director:String = ""
}

class song: library{
    var singer:String = ""
}

var aMovie = movie()
let title1 = aMovie as library
title1.title

if let title2 = aMovie as? song{
    print(title2.singer)
}
else{
    print("fail")
}
//: ### Type checking
print(23 is Int)
print(13 is String)
print(title1 is library)
print(title1 is movie)
print(title1 is song)