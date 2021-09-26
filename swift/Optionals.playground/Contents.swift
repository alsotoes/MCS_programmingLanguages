//: # Optionals
//: Optionals makes possible to have nil types (nil is equivalent to null in other languages)
var optionalVal : Int?  = nil
//: Optionals are a tyoe itself
var optionalType: Optional<Int> = nil
//: We can assign a viariable to an optional as with any other variable
optionalVal = 42
//: ### Unwrapping
//: To get the optional value we must unwrapped the value with the "!" operator
print(optionalVal)  //This prints the opitional Type
print(optionalVal!)
//: Unwrapping a nil object will couse an error
//print(optionalType!)
//: To prevent error use optional binding
if let val = optionalType{
    print(val)
}
else{
    print("optionalType is nil")
}