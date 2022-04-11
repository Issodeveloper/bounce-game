package main

import (
	"fmt"
  "math/rand"
  "time"
)

func main() {
  s1 := rand.NewSource(time.Now().UnixNano())
  r1 := rand.New(s1)

  var pos = r1.Intn(3) + 1;
  var backwards = false;

  for i := 1; i < 90; i++ {
    var field = "!          !";

    field = field[:pos] + "O" + field[pos+1:];

    if pos == len(field) - 2 {
      backwards = true;
    } else if pos == 1 {
      backwards = false;
    }
    fmt.Println(field);

    if backwards {
      pos--;
    } else {
      pos++;
    }
  }
}