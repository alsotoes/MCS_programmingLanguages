package main

import "fmt"



func main() {
  type Vertex struct {
  	X int
  	Y int
  }
  var v = Vertex{1, 2}
	fmt.Println(v)
  fmt.Println(v.X)
}
