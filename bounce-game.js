let pos = Math.floor(Math.random() * 10) + 1;
let backwards = false;

for(let i = 1; i <= 100; i++){
  let field = '!          !';
  field = field.substring(0, pos) + 'O' + field.substring(pos + 1);
  if(field[field.length-2] == 'O'){
    backwards = true;
  } else if(field[1] == 'O'){
    backwards = false;
  }
  console.log(field)

  if(backwards){
    pos--;
  } else {
    pos++;
  }
}