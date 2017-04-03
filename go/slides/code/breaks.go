package main

import "fmt"

func main(){

  loop: for { // loop is a label
      for {
          break loop
      }
  }
  fmt.Println("sup buddy, I'm here")
}
