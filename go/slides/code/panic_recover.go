package main

import "fmt"
func main() {
    f()
    fmt.Println("Returned normally from f.")
}

// START OMIT
func f() {
    defer func() {
        if r := recover(); r != nil { // HL
            fmt.Println("Recovered in f", r)
        }
    }()
    fmt.Println("Calling g.")
    fg(0)
    fmt.Println("Returned normally from g.")
}

func fg(i int) {
    if i > 3 {
        fmt.Println("Panicking!")
        panic(fmt.Sprintf("%v", i)) // HL
    }
    defer fmt.Println("Defer in g", i)
    fmt.Println("Printing in g", i)
    fg(i + 1)
}
// END OMIT
