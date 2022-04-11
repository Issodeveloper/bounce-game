#include <iostream>
using namespace std;

int main() {
  srand ( time(NULL) );

  int pos = rand() % 10 + 1;
  bool backwards = false;
  
  for (int i = 1; i <= 100; i++) {
    string field = "!          !";
    
    field[pos]= 'O';
    if(field[field.length()-2] == 'O'){
      backwards = true;
    } else if(field[1] == 'O'){
      backwards = false;
    }
    cout << field << "\n";
    
    if(backwards){
      pos--;
    } else {
      pos++;
    }
  }
}