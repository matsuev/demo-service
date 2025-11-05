package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", rootHandler)

	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatalln()
	}
}

func rootHandler(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("<h1>Hello from my Golang server!</h1>"))
}
