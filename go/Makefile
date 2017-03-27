out = polynomial.out

.PHONY: all clean editor run nuke

all: editor
	@go vet

clean:
	@go clean
	@rm -f *~
	@rm -f *.out

editor:
	@gofmt -s -l -w *.go
	@go build -o $(out) *.go

run:
	@gofmt -s -l -w *.go
	@go run *.go

nuke: clean
	go clean -i
