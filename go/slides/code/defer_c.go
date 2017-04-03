package main

import "fmt"

func c() (i int) {
defer func() { i++ }() // HL
    return 1
}

func main() {
	fmt.Println( c() )
}
