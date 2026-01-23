# Clean generated files
clean:
	rm -f proto/*.pb.go
	
# Generate proto files
proto: 
	protoc \
		--go_out=. --go_opt=paths=source_relative \
		--go-grpc_out=. --go-grpc_opt=paths=source_relative \
		proto/*.proto

# Run server
run: 
	go run server/main.go

# Run client
run-client: 
	go run client/main.go