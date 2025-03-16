import 'dart:async';
import 'dart:math';
import 'dart:io';
import '../../functionsGrace64.dart';
import '../../main.dart';



double? geomatryCalculator(double input) {

  clearConsole();
  bunny();

  double? input = null;

    while (input == null) {
    print('');
    mainMenuGC();
    print('');
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
        print('Enter radius');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A circle with a radius of ${input ?? 0} has the area of ${circleAreaCalculator(input ?? 0).toStringAsFixed(2)}');
        input = null;
          case 2 : 
            clearConsole2();
        print('Enter radius');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A circle with a radius of ${input ?? 0} has the diameter of ${circleDiameterCalculator(input ?? 0).toStringAsFixed(2)}');
        input = null;
          case 3 : 
            clearConsole2();
        print('Enter radius');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A circle with a radius of ${input ?? 0} has the perimeter of ${circlePerimeterCalculator(input ?? 0).toStringAsFixed(2)}');
        input = null;
          case 4 : 
            clearConsole2();
        print('Enter side of sqare');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A square with a side of ${input ?? 0} has the area of ${sqrAreaCalculator(input ?? 0).toStringAsFixed(2)}');
        input = null;
          case 5 : 
            clearConsole2();
        print('Enter side of square');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A square with a side of ${input ?? 0} has the diagonal of ${sqrDiagonalCalculator(input ?? 0).toStringAsFixed(2)}');
        input = null;
          case 6 : 
            clearConsole2();
        print('Enter side of square');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A square with a side of ${input ?? 0} has the perimeter of ${sqrPerimeterCalculator(input ?? 0).toStringAsFixed(2)}');
        input = null;
          case 7 : 
            clearConsole2();
        print('Enter side of cube');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A cube with a side of ${input ?? 0} has the surface area of ${cubeAreaCalculator(input ?? 0).toStringAsFixed(2)}');
        input = null;
          case 8 : 
            clearConsole2();
        print('Enter side if cube');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A cube with a side of ${input ?? 0} has the volume  of ${cubeVolumaCalculator(input ?? 0).toStringAsFixed(2)}');
        input = null;
          case 9 : 
            clearConsole2();
        print('Enter radius');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A sphere with a radius of ${input ?? 0} has the surface area of ${sphereAreaCalculator(input ?? 0).toStringAsFixed(2)}');
        input = null;
          case 10 : 
            clearConsole2();
        print('Enter radius');
        input = double.tryParse(stdin.readLineSync() ?? '');
        print('A sphere with a radius of ${input ?? 0} has the volume of ${sphereVolumeCalculator(input ?? 0).toStringAsFixed(2)}');
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

//Main Menu
void mainMenuGC(){
    print('');
    print('What would you like to calculate?');
    print(r'''
     {1} Circle area
     {2} Circle diameter
     {3} Circle Perimeter
     {4} Square area
     {5} Square diagonal
     {6} Square perimeter
     {7} Cube surface area
     {8} Cube volume
     {9} Sphere surface area
     {10} Sphere volume
     {99} Exit Program ''');
}

//Circle
// A
double circleAreaCalculator(double input) => 3.14 * (input * input);
//d
double circleDiameterCalculator (double input) => 2 * input;
//u
double circlePerimeterCalculator(double input) => 2 * 3.14 * input;
//Square
//A
double sqrAreaCalculator(double input) => input * input;
//d
double sqrDiagonalCalculator(double input) => sqrt(2) * input;
//u
double sqrPerimeterCalculator(double input) => input * 4;
//Cube
//A
double cubeAreaCalculator(double input) => 6 * (input * input);
//V
double cubeVolumaCalculator(double input) => input * input * input;
//Sphere
//A
double sphereAreaCalculator(double input) => 4 * 3.14 * (input * input);
//V
double sphereVolumeCalculator(double input) => (4 / 3) * 3.14 * (input * input * input);

