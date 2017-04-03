package main

import "fmt"

func a() {
    i := 0
    defer fmt.Println(i) // HL
    i++
    return
}

func main() {
	a()
}
