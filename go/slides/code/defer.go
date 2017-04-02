package main

import (
	"os"
	"io"
)

func CopyFile(dstName, srcName string) (written int64, err error) {
    src, err := os.Open(srcName)
    if err != nil {
        return
    }
    defer src.Close() // HL
    dst, err := os.Create(dstName)
    if err != nil {
        return
    }
    defer dst.Close() // HL

    return io.Copy(dst, src)
}

func main() {
	CopyFile("file2.txt", "file1.txt")
}
