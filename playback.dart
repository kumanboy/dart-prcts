import 'dart:io';

void main(List<String> args) {
  stdout.write('Please any text: ');

  String? text = stdin.readLineSync();

  String? updatedText = text?.replaceAll(" ", "...");

  if(updatedText!.isNotEmpty){
    print(updatedText);
  }
}
