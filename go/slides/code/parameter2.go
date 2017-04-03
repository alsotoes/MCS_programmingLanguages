package main
import "fmt"
type Person struct {
       firstName string
       lastName  string
}

func changeName(p *Person) {
       p.firstName = "John"
}

func main() {
       person := Person{
             firstName: "Rose",
             lastName:  "Doe",
}
       changeName(&person)
       fmt.Println(person)
}
