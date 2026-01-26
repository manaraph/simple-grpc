# A basic grpc implementation
This project implements grpc with golang and uses a Makefile to standardize common development tasks such as generating protobuf files, linting, and building the application.

## Requirements
Make sure the following tools are installed on your system:
* Go (1.20+ recommended)
* make
* protoc (Protocol Buffers compiler)
* protoc-gen-go
* protoc-gen-go-grpc

Install Go plugins:
```
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
```
Make sure $GOPATH/bin is in your PATH.

## Available commands
Run all commands from the project root.

### Generate protobuf files
```
make proto
```
Generates Go files from .proto definitions using protoc.
If Make reports "proto is up to date" and you want to force regeneration:
```
make -B proto
```

### Run the project
```
make run
make run-client
```
Runs the server and client respectively.

### Clean generated files
```
make clean
```
Removes generated files and build artifacts.

## Troubleshooting
Install make if you see: `make: command not found`

If protoc fails, verify:

```
protoc --version
protoc-gen-go --version
protoc-gen-go-grpc --version
```
