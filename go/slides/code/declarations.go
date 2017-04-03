package main

import "fmt"

func main() {
  var a int = 5 // explicit form
  fmt.Println(a)
  b := 15 /// implicit form, without var and data type
  fmt.Println(b)
  c, d = 1, 2 // tuple declaraion
  fmt.Println(c, d)
}
