package main

import (
	"net/http"
)

func main() {
	http.HandleFunc("/", rootHandler)

	http.ListenAndServe(":8080", nil)
}

func rootHandler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("<h1>Hello from my Golang server!</h1>"))
}
