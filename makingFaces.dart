import 'dart:io';

void main(List<String> args) {
  stdout.write('Please enter your name: ');

  String? text = stdin.readLineSync();

  bool?  happy = text?.contains(":)");
  bool?  sad = text?.contains(":(");

  if(happy == true){
    String? smile = text?.replaceFirstMapped(":)", (match) => "🙂");
    print(smile);
  }
  else if(sad == true){
    String? sad = text?.replaceFirstMapped(":(", (match) => "☹️");
    print(sad);
  }
}
