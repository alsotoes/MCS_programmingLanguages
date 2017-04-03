package main
import "fmt"
func main() {
       name := "Joe Smith"
       age := 34
       income := 314.123
       city := "Berlin"
       fmt.Printf("%s is %d years old, lives in %s and has an income of %f.\n", 
                  name, age, city, income)
       fmt.Printf("Hello %s, from %s!\n", name, city)
}
