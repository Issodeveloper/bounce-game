<?php 
  $pos = rand(1, 10);
  $backwards = false;
  
  for ($x = 0; $x <= 90; $x++) {
    $field = "!          !";
    $field[$pos] = 'O';
    if($field[strlen($field)-2] == 'O'){
      $backwards = true;
    } elseif($field[1] == 'O'){
      $backwards = false;
    }
    echo "<pre>$field</pre>";

    if($backwards){
      $pos--;
    } else {
      $pos++;
    }
  }