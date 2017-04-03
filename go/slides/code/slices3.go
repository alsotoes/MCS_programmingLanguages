package main

import "fmt"

func main() {
	var arr = [6]int{2, 3, 5, 7, 11, 13}
	var s = arr[:]
	printSlice(s, arr)
	s = s[:4] // Extend its length.
	printSlice(s, arr)
	s = s[1:] // Drop its first value.
	printSlice(s, arr)
  s = s[:5] // Get all the array
  printSlice(s, arr)
}

func printSlice(s []int, arr [6]int) {
	fmt.Printf("len=%d cap=%d %v %v\n", len(s), cap(s), s, arr)
}
