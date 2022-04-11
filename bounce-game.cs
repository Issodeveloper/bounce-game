using System;
using System.Text;

class Program {
  public static void Main (string[] args) {
    Random rnd = new Random();

    int pos = rnd.Next(1, 11);
    string field = "!          !";
    bool backwards = false;

    for(int i = 1; i <= 90; i++){
      field = "!          !";
      
      StringBuilder sb = new StringBuilder(field);
      sb[pos] = 'O';
      field = sb.ToString();
      if(pos == field.Length - 2){
        backwards = true;
      } else if(pos == 1){
        backwards = false;
      }
      Console.WriteLine(field);

      if(backwards){
        pos--;
      } else {
        pos++;
      }
    }
  }
}