package main
import "fmt"

func main() {
       one := 1
       var float float32
       number := 4054.1415926
       var integer int
       integer = int(number)
       str := string(integer)
       float = float32(one)
       fmt.Printf("%f\n", float)
       fmt.Printf("%d\n", integer)
       fmt.Printf("%x\n", str) //Unicode character in hexadecimal
}
