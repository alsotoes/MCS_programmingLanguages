package main

import "fmt"

func main() {
  var theMap = map[string]int{"one": 1, "two": 2} 
  theMap["three"] = 3 // We can access this way maps

  fmt.Println(theMap)
}
