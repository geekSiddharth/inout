.DEFAULT_GOAL := everything

wasm: client/primes/bigprimes.go
	 cd client/primes && GOOS=js GOARCH=wasm go build -o bigprimes.wasm

# not really a command but ez way to store commands so
staticserve:
	@# do go get -u github.com/shurcooL/goexec first
	@echo "go to localhost:8080"
	@goexec 'http.ListenAndServe(":8080", http.FileServer(http.Dir("./client")))'
	
