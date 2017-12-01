package main

import (
	"bufio"
	"bytes"
	"flag"
	"fmt"
	"io"
	_ "math"
	"os"
)

func readFileWithReadString(fn string) (err error) {
	fmt.Println("readFileWithReadString")

	file, err := os.Open(fn)
	defer file.Close()

	if err != nil {
		return err
	}

	// Start reading from the file with a reader.
	reader := bufio.NewReader(file)

	var line string
	for {
		line, err = reader.ReadString('\n')

		if count := len(line); count > 1 {
			fmt.Printf(" > Read %d characters\n", count)

			// Process the line here.
			if value := limitLength(line, 50); value != "" {
				fmt.Println(" > > " + value)
			}
		}

		if err != nil {
			break
		}
	}

	if err != io.EOF {
		fmt.Printf(" > Failed!: %v\n", err)
	}

	return
}

func readFileWithScanner(fn string) (err error) {
	fmt.Println("readFileWithScanner - this will fail!")

	// Don't use this, it doesn't work with long lines...

	file, err := os.Open(fn)
	defer file.Close()

	if err != nil {
		return err
	}

	// Start reading from the file using a scanner.
	scanner := bufio.NewScanner(file)

	for scanner.Scan() {
		line := scanner.Text()

		fmt.Printf(" > Read %d characters\n", len(line))

		// Process the line here.
		fmt.Println(" > > " + limitLength(line, 50))
	}

	if scanner.Err() != nil {
		fmt.Printf(" > Failed!: %v\n", scanner.Err())
	}

	return
}

func readFileWithReadLine(fn string) (err error) {
	fmt.Println("readFileWithReadLine")

	file, err := os.Open(fn)
	defer file.Close()

	if err != nil {
		return err
	}

	// Start reading from the file with a reader.
	reader := bufio.NewReader(file)

	for {
		var buffer bytes.Buffer

		var l []byte
		var isPrefix bool
		for {
			l, isPrefix, err = reader.ReadLine()
			buffer.Write(l)

			// If we've reached the end of the line, stop reading.
			if !isPrefix {
				break
			}

			// If we're just at the EOF, break
			if err != nil {
				break
			}
		}

		if err == io.EOF {
			break
		}

		line := buffer.String()

		fmt.Printf(" > Read %d characters\n", len(line))

		// Process the line here.
		fmt.Println(" > > " + limitLength(line, 50))
	}

	if err != io.EOF {
		fmt.Printf(" > Failed!: %v\n", err)
	}

	return
}

func limitLength(s string, length int) string {
	if len(s) < length {
		return s
	}

	return s[:length]
}

func main() {
	/*
		var num [10]float64
		var sum, mean, sd float64
		fmt.Println("******  Enter 10 elements  *******")
		for i := 1; i <= 10; i++ {
			fmt.Printf("Enter %d element : ", i)
			fmt.Scan(&num[i-1])
			sum += num[i-1]
		}
		mean = sum / 10

		for j := 0; j < 10; j++ {
			// The use of Pow math function func Pow(x, y float64) float64
			sd += math.Pow(num[j]-mean, 2)
		}
		// The use of Sqrt math function func Sqrt(x float64) float64
		sd = math.Sqrt(sd / 10)

		fmt.Println("The Standard Deviation is : ", sd)
	*/
	filePtr := flag.String("file", "", "filename to get values")
	flag.Parse()

	readFileWithReadString(*filePtr)
	//readFileWithScanner(*filePtr)
	//readFileWithReadLine(*filePtr)
}
