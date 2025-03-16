import 'dart:io';
import 'functionsGrace64.dart';
import 'tools/niceCalc/C2F.dart';
import 'tools/niceCalc/currencyCalculator.dart';
import 'tools/niceCalc/geomatryCalculator.dart';

void main() {

  clearConsole();
  bunny();
  
  
  double? input = null;

  mainScreen();

   while (input == null) {
    input = double.tryParse(stdin.readLineSync() ?? '');
      switch (input) {
        case null :
        input = null;
        print(''' 
        This is not a valid number
        Please try again
        ''');
            case 1 : 
        geomatryCalculator(0);
        input = null;
            case 2 : 
        C2F(0);
        input = null;
            case 3 :
        currencyCalculator(0);
        input = null;
        case 99:
        clearConsole2();
        print('Computer, end program');
        default: 
        input = null;
    }
  }


}

void mainScreen() {
  print('Welcome, choose an option:');
  print('{1} Geomatry calculator');
  print('{2} Celsius/Fahrenheit');
  print('{3} Currency Calculator');
  print('{99} Exit program');
}