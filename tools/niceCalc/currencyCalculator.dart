import 'dart:io';
import '../../functionsGrace64.dart';
import '../../main.dart';

void currencyCalculator(double input) {
  clearConsole();
  bunny();

  double? input = null;

  while (input == null) {
  print('Select {1} for NIS to Euro.');
  print('Select {2} for NIS to USD');
  print('Select {3} for Euro to NIS');
  print('Select {4} for Euro to USD');
  print('Select {5} for USD to Euro');
  print('Select {6} for USD to NIS');
  print('{99} Exit program');
  input = double.tryParse(stdin.readLineSync() ?? '');
      switch (input) {
        case null :
        input = null;
        print(''' 
        This is not a number
        Please try again
        ''');
            case 1 : 
            clearConsole2();
        print('NIS to Euro');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('$input NIS is ${nisToEuro(input ?? 0).toStringAsFixed(2)} Euro');
        input = null;
          case 2 : 
            clearConsole2();
        print('NIS to USD');
        input = double.tryParse(stdin.readLineSync()!);
        print('$input NIS is ${nisToUSD(input ?? 0).toStringAsFixed(2)} USD');
        input = null;
          case 3 : 
            clearConsole2();
        print('Euro to NIS');
        input = double.tryParse(stdin.readLineSync()!);
        print('$input Euro is ${euroToNis(input ?? 0).toStringAsFixed(2)} NIS');
        input = null;
          case 4 : 
            clearConsole2();
        print('Euro to USD');
        input = double.tryParse(stdin.readLineSync()!);
        print('$input Euro is ${euroToUSD(input ?? 0).toStringAsFixed(2)} USD');
        input = null;
          case 5 : 
            clearConsole2();
        print('USD to Euro');
        input = double.tryParse(stdin.readLineSync()!);
        print('$input USD is ${USDtToEuro(input ?? 0).toStringAsFixed(2)} Euro');
        input = null;
          case 6 : 
            clearConsole2();
        print('USD to NIS');
        input = double.tryParse(stdin.readLineSync()!);
        print('$input USD is ${USDToNis(input ?? 0).toStringAsFixed(2)} NIS');
        input = null;
        case 99:
        clearConsole2();
        print('Computer, end program');
        lineBreak();
        mainScreen();
        default: input = null;
    }
  }
}


double nisToEuro(double a) => a * 0.25;

double nisToUSD(double a) => a * 0.27;

double euroToNis(double a) => a * 4.01;

double euroToUSD(double a) => a * 1.09;

double USDtToEuro(double a) => a * 0.92;

double USDToNis(double a) => a * 3.65;