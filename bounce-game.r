pos <- sample.int(10, 1)
backwards <- FALSE

i <- 1
while (i <= 100) {
  field <- "!          !";
  substr(field, pos, pos) <- "O"
  if(pos == nchar(field) - 1){
    backwards <- TRUE
  } else if(pos == 2){
    backwards <- FALSE
  }
  print(field)

  if(backwards){
    pos = pos - 1;
  } else {
    pos = pos + 1;
  }
  i = i + 1
}