package main

import (
  "fmt"
)

func main() {
  var firstArray = [2]int{1, 2}
  var secondArray [10]int
  secondArray[4] = 15 // Arrays can be accessed like this

  fmt.Println(firstArray, " with length of: ", len(firstArray))
  fmt.Println(secondArray)
}
