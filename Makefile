PWD := `pwd`

default: build

build: clean linux darwin windows

clean:
	rm -rf ./build

linux:
	docker run --rm -e "GOOS=linux" -e "GOARCH=amd64" -v $(PWD):/usr/src/github.com/minyk/kubectl-demo -w /usr/src/github.com/minyk/kubectl-demo golang:1.13 go build -ldflags="-s -w ${GO_LDFLAGS}" -v -o build/linux/kubectl-demo ./cmd/kubectl-demo.go

darwin:
	docker run --rm -e "GOOS=darwin" -e "GOARCH=amd64" -v $(PWD):/usr/src/github.com/minyk/kubectl-demo -w /usr/src/github.com/minyk/kubectl-demo golang:1.13 go build -ldflags="-s -w ${GO_LDFLAGS}" -v -o build/darwin/kubectl-demo ./cmd/kubectl-demo.go

windows:
	docker run --rm -e "GOOS=windows" -e "GOARCH=amd64" -v $(PWD):/usr/src/github.com/minyk/kubectl-demo -w /usr/src/github.com/minyk/kubectl-demo golang:1.13 go build -ldflags="-s -w ${GO_LDFLAGS}" -v -o build/windows/kubectl-demo.exe ./cmd/kubectl-demo.go
