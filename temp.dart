import 'functionsGrace64.dart';

void main() {

  clearConsole();
  bunny();
  

  print(numberInverter(5));

}

    //Letter in word counter
int letterCounter(String word, String letter) {
    int counter = 0;
    for (int i = 0; i < word.length; i++) {
      String currentLetter = word[i];
      if (currentLetter == letter) {
      counter++;
      }
    }
    return counter;
  }


double numberInverter(int a) {
  return a * -1;
}