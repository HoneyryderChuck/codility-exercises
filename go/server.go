package main

import (
  "log"
  "time"
  "io"
  "net/http"
)

func helloFunc(w http.ResponseWriter, r *http.Request) {
  io.WriteString(w, "Hey you")
}

func main() {
  handler := http.NewServeMux()
  handler.HandleFunc("/", helloFunc)

  server := &http.Server {
    Addr: "0.0.0.0:9002",
    Handler: handler,
    ReadTimeout: 5 * time.Second,
    WriteTimeout: 10 * time.Second,
  }
  log.Println(server.ListenAndServe())
}

