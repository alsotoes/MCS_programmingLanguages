package main

import (
	"fmt"
	"math/big"
)

// f(x) = 3x^3 + 2x + 1 => [1 2 0 3]
type Poly []*big.Int

func NewPolyInts(coeffs ...int) (p Poly) {
	p = make([]*big.Int, len(coeffs))

    for i := 0; i < len(coeffs); i++ {
		p[i] = big.NewInt(int64(coeffs[i]))
    }
    p.trim()
    return
}

func (p *Poly) trim() {
	var last int = 0
 	for i := p.GetDegree(); i > 0; i-- {
		if (*p)[i].Sign() != 0 {
			last = i
			break
		}
 	}
 	*p = (*p)[:(last + 1)]
}

func (p Poly) GetDegree() int {
	return len(p) - 1
}

func (p *Poly) isZero() bool {
	if p.GetDegree() == 0 && (*p)[0].Cmp(big.NewInt(0)) == 0 {
		return true
    }
    return false
 }

func (p *Poly) Compare(q *Poly) int {
	switch {
    	case p.GetDegree() > q.GetDegree():
        	return 1
     	case p.GetDegree() < q.GetDegree():
        	return -1
    }
     
	for i := 0; i <= p.GetDegree(); i++ {
    	switch (*p)[i].Cmp((*q)[i]) {
        	case 1:
            	return 1
         	case -1:
            	return -1
        }
    }
    return 0
 }

func (p Poly) Add(q Poly) Poly {
	if p.Compare(&q) < 0 {
    	return q.Add(p)
    }
    
	var r Poly = make([]*big.Int, len(p))
    for i := 0; i < len(q); i++ {
    	a := new(big.Int)
        a.Add(p[i], q[i])
        r[i] = a
    }
     
	for i := len(q); i < len(p); i++ {
    	a := new(big.Int)
        a.Set(p[i])
        r[i] = a
    }

    r.trim()
    return r
}

func (p Poly) Mul(q Poly) Poly {
	var r Poly = make([]*big.Int, p.GetDegree()+q.GetDegree()+1)
    for i := 0; i < len(r); i++ {
    	r[i] = big.NewInt(0)
    }

    for i := 0; i < len(p); i++ {
    	for j := 0; j < len(q); j++ {
        	a := new(big.Int)
            a.Mul(p[i], q[j])
            a.Add(a, r[i+j])
            r[i+j] = a
        }
    }
    r.trim()
    return r
 }

func (p Poly) String() (s string) {

	if p.isZero() == true {
		return "0"
	}
		
    for i := len(p) - 1; i >= 0; i-- {
    	switch p[i].Sign() {
			case -1:
				if i == len(p)-1 {
					s += "-"
				} else {
					s += " - "
				}
				if i == 0 || p[i].Int64() != -1 {
					s += p[i].String()[1:]
				}
			case 0:
				continue
			case 1:
				if i < len(p)-1 {
					s += " + "
				}
				
				if i == 0 || p[i].Int64() != 1 {
					s += p[i].String()
				}
			}

		if i > 0 {
    		s += "x"
            if i > 1 {
            	s += "^" + fmt.Sprintf("%d", i)
            }
        }
    }
    return
}

func main() {
	zero := NewPolyInts(0)

	p1 := NewPolyInts(0, 0, 0, 4)
	p2 := NewPolyInts(0, 0, 3)
	p3 := NewPolyInts(1)
	p4 := NewPolyInts(0, 2)
	p := p1.Add(p2).Add(p3).Add(p4)

	q1 := NewPolyInts(0, 0, 3)
	q2 := NewPolyInts(5)
	q := q1.Add(q2)

	r := p.Add(q)
	s := p.Mul(q)

	fmt.Println( "zero(x)     = " + zero.String() )
	fmt.Println( "p(x)        = " + p.String() )
	fmt.Println( "q(x)        = " + q.String() )
	fmt.Println( "p(x) + q(x) = " + r.String() )
	fmt.Println( "p(x) * q(x) = " + s.String() )
}
