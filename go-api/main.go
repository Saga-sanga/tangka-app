package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/api/hello", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(w, "Hello from Go API!")
	})

	fmt.Println("Go API running on :8081")
	http.ListenAndServe(":8081", nil)
}
