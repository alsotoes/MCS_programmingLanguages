//: # Inheritance
//: Class can heritage from another class
class Vehicle{
    
    var name:String
    
    init(name:String)
    {
        self.name = name
    }
    
    func MakeNoise()
    {
        print("Rrrrrrrr")
    }
    
}

class Train : Vehicle
{
    init()
    {
        super.init(name: "Train")
    }
    
    override func MakeNoise() {
        print("Chu Chu")
    }
}

let car = Vehicle(name: "car")
car.MakeNoise()

let train = Train()
train.MakeNoise()
//: # Protocols
//: Protocoles makes a promise of a code
protocol SomeProtocol {
    
    //Reuqire properties
    var mustBeSettable: Int { get }
    var doesNotNeedToBeSettable: Int { get }
    
    //Constructor
    init (a:Int)
    
    //Requere mthods
    func mustHaveThis(val:String) -> Int
}

class implementedClass : SomeProtocol{
    
    var mustBeSettable: Int
    var doesNotNeedToBeSettable: Int {
        return mustBeSettable
    }
    
    required init (a:Int){
        mustBeSettable = a
    }
    
    func mustHaveThis(val:String) -> Int{
        return val.characters.count
    }
}

let obj = implementedClass(a: 432)
obj.mustHaveThis(val: "Hi")