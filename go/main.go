package main

import (
	"fmt"
	"strconv"
	"./polynomial"
)


func main() {
    zero := polynomial.NewPolyInts(0)

    p1 := polynomial.NewPolyInts(0, 0, 0, 4)
    p2 := polynomial.NewPolyInts(0, 0, 3)
    p3 := polynomial.NewPolyInts(1)
    p4 := polynomial.NewPolyInts(0, 2)
    p := p1.Add(p2).Add(p3).Add(p4)

    q1 := polynomial.NewPolyInts(0, 0, 3)
    q2 := polynomial.NewPolyInts(5)
    q := q1.Add(q2)

    r := p.Add(q)
    s := p.Mul(q)

    fmt.Println( "zero(x)     = " + zero.String() )
    fmt.Println( "p(x)        = " + p.String() )
    fmt.Println( "q(x)        = " + q.String() )
    fmt.Println( "p(x) + q(x) = " + r.String() )
    fmt.Println( "p(x) * q(x) = " + s.String() )
	fmt.Println( "p(q(x))     = " + p.Compose(q).String() )
	fmt.Println( "0 - p(x)    = " + zero.Add(p.Neg()).String() )
    fmt.Println( "p(3)        = " + strconv.FormatFloat(p.Eval(3), 'f', 0, 64) )
}
