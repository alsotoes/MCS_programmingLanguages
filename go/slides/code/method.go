package main

import (
	"fmt"
	"math"
)

type Vertex struct {
	X, Y float64
}

func (v Vertex) Abs() float64 { // it's like OOP, but it's not :P
  return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

func main() {
	V := Vertex{3, 4}
	fmt.Println(V.Abs())
}
