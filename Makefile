all:
	go test ./...
	go test ./... -short -race
	go test ./... -run=NONE -bench=. -benchmem
	env GOOS=linux GOARCH=386 go test ./...
	go vet
	go get github.com/gordonklaus/ineffassign
	ineffassign .
