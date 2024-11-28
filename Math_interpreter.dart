import "dart:io";

void main(List<String> args) {
  stdout.write("Expression: "); //1+1

  String? expression =  stdin.readLineSync();

  List<String> calculation = expression!.split(' ') ;

  int x = int.parse(calculation[0]),
      z = int.parse(calculation[2]);
      

      if(calculation[1] == "/"){
        print(x/z);
      }


}