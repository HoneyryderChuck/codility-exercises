package main

import (
  "fmt"
  "html"
  "log"
  "strconv"
  "net/http"
  "encoding/json"
  "time"
  "github.com/gorilla/mux"
)

type Baby struct {
   Name string
   Birthday time.Time
}
type Babies map[int]Baby

var myBabies = Babies{
  1: Baby{Name: "Nia Long", Birthday: time.Date(1983,11,2,0,0,0,0, time.UTC)},
  2: Baby{Name: "T Boz", Birthday: time.Date(1973,11,2,0,0,0,0, time.UTC)},
}

func main() {
  router := NewRouter()
   log.Fatal(http.ListenAndServe(":9002", router))
}

func Index(w http.ResponseWriter, r *http.Request) {
  fmt.Fprintf(w, "Hello, %q", html.EscapeString(r.URL.Path))
}

func BabiesHandle(w http.ResponseWriter, r *http.Request) {
  babies := make([]Baby, 0, len(myBabies))
  for _, v := range myBabies {
    babies = append(babies, v)
  }
  if err := json.NewEncoder(w).Encode(babies); err != nil {
    panic(err)
  }
}

func BabyHandle(w http.ResponseWriter, r *http.Request) {
  vars := mux.Vars(r)
  babyId := vars["Id"]
  id, _ := strconv.Atoi(babyId)

  baby := myBabies[id]

  if err := json.NewEncoder(w).Encode(baby); err != nil {
    panic(err)
  }
}
