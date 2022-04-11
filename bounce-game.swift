var pos = Int.random(in: 1...10)
var backwards = false

for _ in 1...100 {
  var field = "!          !"
  
  field = field.prefix(pos) + "O" + field.dropFirst(pos + 1)
  
  if(pos == field.count - 2){
    backwards = true
  } else if(pos == 1){
    backwards = false
  }
  print(field)
  
  if(backwards){
    pos -= 1;
  } else {
    pos += 1;
  }
}