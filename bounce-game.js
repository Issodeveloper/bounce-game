let pos = Math.floor(Math.random() * 10) + 1;
let backwards = false;

for(let i = 1; i <= 100; i++){
  let field = '!          !';
  field = field.substring(0, pos) + 'O' + field.substring(pos + 1);
  if(pos == field.length-2){
    backwards = true;
  } else if(pos == 1){
    backwards = false;
  }
  console.log(field)

  if(backwards){
    pos--;
  } else {
    pos++;
  }
}