/*

	RUN: env GODEBUG=gctrace=1 go run mem_address.go

*/

package main

import "fmt"
// START OMIT
func plus(a int, b int) int {
    return a + b
}

func plusPlus(a, b, c int) int {
    return a + b + c
}

func main() {
    funcp := plus
    funcpp := plusPlus
    fmt.Println(funcp)
    fmt.Println(funcpp)
    fmt.Println(funcp(1, 2))
    fmt.Println(funcpp(1, 2, 3))
}
// END OMIT
