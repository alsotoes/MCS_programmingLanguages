package main

import (
  "fmt"
)

func main() {
  var theString string = "Hello, world"
  var spanishString string =  "español"
  var encodedMessage = []rune {83, 101, 99, 114, 101, 116, 32, 109, 101, 115, 115, 97, 103, 101}
  
  fmt.Println(theString, " my length is: ", len(theString))
  fmt.Println(spanishString, " my length is: ", len(spanishString))
  fmt.Println(string(encodedMessage))
}
