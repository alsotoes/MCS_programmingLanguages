package main

import (
	"fmt"
	"time"
	"sync"
)
// START OMIT
var (
	counter = 0
	lock sync.Mutex // HL
)

func main() {
	for i := 0; i < 20; i++ {
		go incr()
	}

	time.Sleep(time.Millisecond * 10)
}

func incr() {
	lock.Lock() // HL
	defer lock.Unlock() // HL
	counter++
	fmt.Println(counter)
}
// END OMIT
