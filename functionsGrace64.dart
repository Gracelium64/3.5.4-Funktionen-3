void clearConsole() => print("\x1B[2J");
void clearConsole2() => print("\x1B[2J");

void lineBreak() => print('');

//Sum of 2 numbers
double addTwo(double a, double b) {
  double result = a + b ;
  return result;
}

//Sum of 3 numbers
double addThree(double a, double b, double c) {
  double result = a + b + c;
  return result;
}

//Text Length
int textLength(String text) {
  int result = text.length;
  return result;
}


//Letter counter
  // // // // String wordInput = '';
  // // // // String letterInput = '';
  // // // // int counter = 0;
  
  // // // // wordInput = 'Example';
  // // // // letterInput = 'x';
  // // // // printMeCounter(counter, wordInput, letterInput);

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

  void printMeCounter(int printer, String wInput, String lInput) {
  printer = letterCounter(wInput, lInput);
    print('The letter "$lInput" appears $printer times in the input "$wInput"');
    lineBreak();
  }

//Letter checker
  // // // // String wordInput = '';
  // // // // String letterInput = '';
  // // // // bool appearsIn = true;

  // // // // wordInput = 'Word';
  // // // // letterInput = 'o';
  // // // // printMe(appearsIn, wordInput, letterInput);

bool letterChecker(String word, String letter) {
  if (word.contains(letter)) {
    return true;
  } else {
    return false;
  }
}

void printMeChecker(bool printer, String wInput, String lInput) {
  printer = letterChecker(wInput, lInput);
  if (printer == true) {
    print('The letter "$lInput" appears in the word "$wInput"');
    lineBreak();
  } else {
    print('The letter "$lInput" does not appear in the word "$wInput"');
    lineBreak();
  }
}

//Vowel Checker
int vowelChecker(String text) {
  int result = 0;
  for (int i = 0; i < text.length; i++) {
    if (text[i].contains('a')) {
      result++;
    } else if (text[i].contains('e')) {
      result++;
    } else if (text[i].contains('i')) {
      result++;
    } else if (text[i].contains('o')) {
      result++;
    } else if (text[i].contains('u')) {
      result++;
    } else if (text[i].contains('A')) {
      result++;
    } else if (text[i].contains('E')) {
      result++;
    } else if (text[i].contains('I')) {
      result++;
    } else if (text[i].contains('O')) {
      result++;
    } else if (text[i].contains('U')) {
      result++;
    }
  }
    return result;
  }

//Number polarity checker

// ignore: body_might_complete_normally_nullable
bool? numberPolarity(double x) {
    if (x > 0) {
      print('The number "$x" is positive');
    } else if (x < 0) {
      print('The number "$x" is negative');
    } else {
      print('The number is 0');
    }
}

  //Bigger number comparison
  double biggerNumber(double a, double b) {
  double c = 0;
  if (a > b) {
    c = a;
  } else {
    c = b;
  }
  return c;
}

//Even number checker
bool evenNumber(int a) {
  bool even = true;
  if (a % 2 == 0) {
    even = true;
  } else {
    even = false;
  }
  return even;
}

//Sum of List
int sumList(List<int> a) {
  int addedUp = 0;
  for (int i = 0; i < a.length; i++) {
    addedUp += a[i];
  }
  return addedUp;
}

//Average of List
double averageList(List<double> a) {
  double result = 0;
    for (int i = 0; i < a.length; i++) {
    result += a[i];
  }
  result = (result / a.length);
  return result;
}

//Number inverter
double numberInverter(int a) => a * -1;

void bunny() {
  print(r'''
                                                                        ........:                     
                                ...:-                               ....-*##+...-                   
                               ..:-...:                          ....=+-.....+:..                   
                               ..+#+=...:                      ...-*=........-+..:                  
                              ...*#*-++...:                  ...:*=...........#...                  
                              ...#+#*-:=+:..::              ..:*=:...=**+-:...#...                  
                              ..-*+*#*--:=+:..:            ..-+-:..+**+=---:..#...                  
                              ..=*=+*#+--::-+:..:        ...*=::.:+**+-----:..#...                  
                              ..=+=++*#*--:::+=..:       ..+-::..+*+=------:.-+..:                  
                             ...++-=+**#*-::::=*..:    ...==:::.=*++-------..+:..                   
                             ...++-==+**#+-::::-+..:   ..:*-::::#++=------:.:+..:                   
                              ..=+-==+**#*-:::::+=..: ...*=:::.+*+=------:..--..-                   
                              ..-*====+*##===---=#......-#-::::**+=------...+..:                    
                              ..:*===++*##==+*#######*=:+*-:::-*+=------:..+:.:                     
                              ...*==+***###+=-+++*******#+-::.+*==-----:..+:..                      
                              ...++==*%*+-::--=*****+**=:-::::*+==----...+:..:                      
                               ..-*=+*=-::::-+****+:-*+:::::.+*+**=-:...*:.:-                       
                                ..+#*-:::::---*++:..=+::::::::+#++-...=*..:-                        
                               ...+*-:::---=:--.....-::::::::::=-:::-*-..:-                         
                              ...+*=-:::::-+:........:::::::::::::=*:..:-                           
                             ...**==*#%%%*-:.........:-++::::::::+:..:-                             
                            ...**----**:#*#:.........::-:::::::::==..-                              
                           ..:**-::::#**%##*.........:+#%%%*=-:::-+..:                              
                         ...:#+-:::::=***#%*........:#**%--#+#-:::+:.:-                             
                     .......**++=::....:::-:.......-#####+#+--::::-*..:                             
                    ........:#=-....:-:.....+-:::..:--+**+-::::::::=+..-                            
                      ::::...=*-:.....:::...:+=++......:::::::::::::+-.:                            
                        .....:+*=-.......:..:+.....:::::::...::-===+*+..:                           
                      ....-:...:#+-:.....:====*=:.....:=:...:-:.:-=*#-.:                            
                     ...:...: ...+%+-::.......::.........---....:=*+..:-                            
                      ....: ...=##+=+**+=::................::--=+=.:..:                             
                          ...-#*#+=-----====-:::::::::--==+*+++#=..:::                              
                         ...*#+#+=-::::::.........:::::::::::::-++..-                               
                        ..:*++*+::..............................:==..::                             
                       ..:*+=+*-:::.............................:-#*..:-                            
                      ...#--=+*-:::::.........        ...........-*+#-..-                           
                      ..*+::-+*=::::...........       .........::-+=-+-.:-                          
                      .:#::..=*+:::::::::........     .........::-+-::+..:                          
                     ..:*:...:=#-::::::::.::................:::::-+:..+-.:-                         
                      ..#-:..:-*+-:::::--:::..:............::::::+=...-+..:                         
                      ..+*-:::--#=-:::::-==--:::..::::::::--:::-+*:...-+..:                         
                      ...#+------*=:::::::-=*=::::::-#-==-::::-=#-:...+:.:-                         
                      :..:##+=---=#=-::::::-+*::::::**=-:::::-=#=--::=+..:                          
                       ..-#**#=--=+#+--:::::-*+-:::-#=-::::--=#+==+-++:.:-                          
                       ...=##=+--+-=%%+-:...:*%**##%#+:::-=+##+--+=#...-                            
                        .....=#*=*++#-.-:..=..-*..:*:.:-..-:.#*+**+..:-                             
                           .........-*-:+:.:=:++...*-:+:.:+-++......:-                              
                                  :.....:+*+:........:-**=.....--                                   
                                    ...........:  :.........::                                      
''');
}