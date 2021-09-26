//: # Enumerations
enum directions{
    case up, down, left, right
}
//: Enums cases are types by itself, and do not represent an integer as defoult
let dir: directions = .up
//: Enums types are infered by Swift letting you to write less code
switch dir{
case .up:
    print("Goes up")
case .down:
    print("Goes down")
default:
    print("Goes other way")
}
//: ### Associated Values
//: We can create C like enums using an associated value to an enum
enum moreDirections:Int{
    case up = 1, down, left, right
}
let anotherDir = moreDirections.left
//: Acces to the associated value by using the rawValue property
switch anotherDir.rawValue{
case 0:
    print("Goes up")
case 1:
    print("Goes down")
case 2:
    print("Goes left")
case 3:
    print("Goes right")
default:
    print("Nowhere to go")
}
