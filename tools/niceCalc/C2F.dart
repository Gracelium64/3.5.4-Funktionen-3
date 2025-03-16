import 'dart:io';
import '../../functionsGrace64.dart';
import '../../main.dart';

void C2F(int input) {

  clearConsole();
  bunny();

  int? input = null;

  while (input == null) {
  print('Select {1} for Celcius.');
  print('Select {2} for FREEDOM UNITS');
  print('{99} Exit program');
  input = int.tryParse(stdin.readLineSync() ?? '');
      switch (input) {
        case null:
        input = null;
        print(''' 
        This is not a number
        Please try again
        ''');
            case 1 : 
            clearConsole2();
        print('Celcius to FREEDOM UNITS');
        input = int.tryParse(stdin.readLineSync() ?? '');
        print('${input ?? 0} Celcius is ${tempCtoF(input ?? 0).toStringAsFixed(2)} FREEDOM UNITS');
        input = null;
        print('');
          case 2 : 
            clearConsole2();
        print('FREEDOM UNITS to Celcius');
        input = int.tryParse(stdin.readLineSync() ?? '');
        print('${input ?? 0} FREEDOM UNITS is ${tempFtoC(input ?? 0).toStringAsFixed(2)} Celcius');
        input = null;
        print('');
        case 99:
        clearConsole2();
        print('Computer, end program');
        lineBreak();
        mainScreen();
        default: input = null;
    }
  }
}


double tempCtoF(int a) => (9 / 5) * a + 32;

double tempFtoC(int a) => (5 / 9) * (a - 32);