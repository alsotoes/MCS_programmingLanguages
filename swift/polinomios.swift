 
/* Polinoymial class for swift it includes two initializers or constructor:
  -The first takes the parameters a and b to create the monomial a*x^b.
  -The secon takes and array as single parameter each each consecutive duple in the array represents a monomial of the a*x^b.
  -The class possesses two atributes; an array of coeficients and the degree of the polynomial
  -It also contains 5 methods; degree, add, toString,evaluate and differentiate*/
  
class poli{
    
    var coef = [Int]()
    var grado = 0
    
    //It initializes a monomial (a polynomial of the kind a*x^b)
   
    init (a:Int,b:Int)
    {
        coef = Array(repeating: 0, count: b+1)
        coef[b] = a
        grado = degree()
    }
    
    /*It initializes a polynomial using an array as single parameter where the entris of the A[2i] are the the first parameter of the previous constructor and the entries A[2i+1] are the second parameter of the previous constructor */ 
    init (_ n:[Int])
    {
    
      var p = poli( a:0,b:0)
       for i in 0...(n.count/2)-1
       {
        let tmp = poli(a:n[2*i],b:n[2*i+1])
        p = p.add(tmp)
       }
       coef = p.coef
       grado = p.grado
       
    }


    //Sets the polynomial's degree
    func degree() -> Int {
        var d:Int = 0;
        for  i in 0...coef.count-1
        {
            if (coef[i] != 0) {
                d = i  }
        }
        return d
    }
    
    //a+b 
    func add (_ b:poli) -> poli
    {
        let c = poli(a: 0, b: max(grado, b.grado))
        for i in 0...self.grado
        {
            c.coef[i] = c.coef[i] + self.coef[i]
        }
        for i in 0...b.grado
        {
            c.coef[i] =  c.coef[i] + b.coef[i]
        }
        c.grado = c.degree()
        return c
    }
    
    //Polynomial's mathematic notation
      func toString () -> String {
        
        if grado ==  0 {return "" + String(coef[0]) }
        if grado ==  1 && coef[0] != 0  {return String(coef[1]) + "x + " + String(coef[0])}
        else if grado ==  1 && coef[0] == 0 {return String(coef[1]) + "x" }
        
         var s:String = String(coef[grado]) + "x^" + String(grado);
        
         for  i in stride(from: grado-1, to: -1, by: -1){
            if  coef[i] == 0 {continue}
            else if coef[i]  > 0 { s = s + " + " + String( coef[i])}
            else if coef[i]  < 0 { s = s + " - " + String(-coef[i])}
            if  i == 1 {s = s + "x"}
            else if i >  1 {s = s + "x^" + String(i)}
            
        }
        
        return s
        
        
      }
    
    // Polnynomial's value at x
    
       func evaluate(_ x:Double) -> Double {
        var p:Double = 0;
        for i in stride(from: grado, to: -1, by: -1){
                p = Double(coef[i]) + (x * p)
        }
        return p;
    }
    
    //Derivative of a polynomial

        func  differentiate() -> poli {
        if (grado == 0) {return  poli([0, 0])}
        var deriv = poli(a: 0,b: grado-1)
        deriv.grado = grado - 1
        for i in 0...grado-1{
          deriv.coef[i] = (i + 1) * coef[i + 1]}
        return deriv}
    
    
    
    
}

 //In this part of the code are depicted the functions to sum, substract,multiply and compose polynomials.


//Polynomials Addition

 func sump (_ a:poli,_ b:poli) -> poli
    {
        let c = a.add(b)
        return c
    }
    
//Polynomials Substraction

 func minusp (_ a:poli,_ b:poli) -> poli
    {
        for i in 0...b.grado
        {
            b.coef[i] =  b.coef[i]*(-1) 
        }
        let c = a.add(b)
        return c
    }
 
//Polynomials Multiplication

   func times(_ a:poli,_ b:poli) -> poli {
        
        var c = poli(a: 0, b: a.grado + b.grado)
        for i in 0...a.grado{
            for j in 0...b.grado{        
                c.coef[i+j] += (a.coef[i] * b.coef[j])
                }}
               c.grado = c.degree()
               return c
               }
               
//Polynomial Composition     

    func  compose(_ a:poli,_ b:poli) -> poli  {
        
        var c = poli(a: 0, b: 0)
        for  i in stride(from: a.grado, to: -1, by: -1) {
            var term = poli(a: a.coef[i],b: 0);
            c =  sump(term,times(b,c))
             }
             
        //c.grado = c.degree()
        return c;
    }


        

let zero = poli ([0,0]) // Zero polynomial
let f = poli ([1,0,2,1,3,2,4,3])
let g = poli ([0,0,1,1,2,2,3,3])
var h = sump(f,g)
let x:Double = 1

print("\nPolynomials Addition\n ")
print("h(x)=f(x)+g(x)= \(h.toString())")
print("h(x)=f(x)+g(x)= \(h.evaluate(x))")


var h = minusp(f,g)

print("\nPolynomials Substraction\n ")
print("h(x)=f(x)-g(x)= \(h.toString())")
print("h(x)=f(x)-g(x)= \(h.evaluate(x))")

var h = minusp(zero,g)
var h = times(f,g)

print("\nPolynomial Multiplication\n ")
print("h(x)=f(x)*g(x)= \(h.toString())")
print("h(x)=f(x)*g(x)= \(h.evaluate(x))")

var h = compose(f,g)

print("\nPolynomial Composition\n ")
print("h(x)=f(g(x))= \(h.toString())")
print("h(x)=f(g(x))= \(h.evaluate(x))")

print("\nDerivative of a polynomial\n ")
print("f'(x)= \(f.differentiate().toString())")
print("f'(x)= \(f.differentiate().evaluate(x))")



