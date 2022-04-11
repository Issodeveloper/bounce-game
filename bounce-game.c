#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

int main(void) {
  srand(time(0));
  int pos = rand() % 10 + 1;
  bool backwards = false;
  
  for (int i = 1; i <= 100; i++) {
    char field[] = "!          !";
    field[pos] = 'O';
    
    if(pos == strlen(field) - 2){
        backwards = true;
    } else if(pos == 1){
        backwards = false;
    }
        
    printf("%s", field);
    printf("\n");
    
    if(backwards){
        pos--;
    } else {
        pos++;
    }
  }
}