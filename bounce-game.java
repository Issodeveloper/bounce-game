import java.util.concurrent.ThreadLocalRandom;

class Main {
  public static void main(String[] args) {
    int pos = ThreadLocalRandom.current().nextInt(1, 10 + 1);
    Boolean backwards = false;

    for(int i = 1; i <= 100; i++){
      String field = "!          !";
      field = field.substring(0,pos) + 'O' + field.substring(pos+1);
      
      if(pos == field.length() - 2) {
        backwards = true;
      } else if(pos == 1) {
        backwards = false;
      }
      System.out.println(field);

      if(backwards){
        pos--;
      } else {
        pos++;
      }
    }
  }
}