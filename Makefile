.PHONY: all test get_deps

all: test install

install: get_deps
	go install github.com/Gessiux/go-wire/cmd/...

test:
	go test --race github.com/Gessiux/go-wire/...

get_deps:
	go get -d github.com/Gessiux/go-wire/...

pigeon:
	pigeon -o expr/expr.go expr/expr.peg
