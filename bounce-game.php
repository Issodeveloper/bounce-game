<?php 

  $pos = rand(1, 10);
  $backwards = false;
  for ($x = 0; $x <= 90; $x++) {
    $field = "!          !";
    $field[$pos] = 'O';
    if($pos == strlen($field)-2){
      $backwards = true;
    } elseif($pos == 1){
      $backwards = false;
    }
    echo "<pre>$field</pre>";

    if($backwards){
      $pos--;
    } else {
      $pos++;
    }
  }