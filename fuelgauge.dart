import 'dart:io';

void main() {
  while (true) {
    stdout.write("Fraction: ");
    String input = stdin.readLineSync() ?? "";
    try{
      if (input.length == 3) {
          String firstChar = input[0];
          String secondChar = input[2];

          int x = int.parse(firstChar);
          int y = int.parse(secondChar);

          if (x.runtimeType == int && y.runtimeType == int) {
            double result = (x/y)*100.toInt();
            if(result == double.infinity){
              continue;
            }
            if(result == 100){
              print('F');
            }else if(result == 0){
              print('E');
            }
            else{
              print('${result.toInt()}%');
            }
            break;
          }
       // Exit the loop if input is valid
    }
    }
    catch(e){
      print(e);
    }
  }
}
