.PHONY: all clean run

out = polynomial.out
all:
	@go vet
	@gofmt -s -l -w *.go
	@go build -o $(out) *.go
	@echo "[+] Building executable file $(out)"

clean:
	@go clean
	@rm -f *~
	@rm -f *.out
	@go clean -i

run:
	@gofmt -s -l -w *.go
	@go run *.go
