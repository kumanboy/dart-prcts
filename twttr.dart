// import 'dart:io';

import 'dart:io';

void main(List<String> args) {
  stdout.write("Input: ");

  String? text = stdin.readLineSync();

  
  String yozuv = "";
  for(var i = 0; i<text!.length;i++){
    String? harf = text[i];
    if(harf != "a" && harf != "i" && harf != "e" && harf != "u" && harf != "o"){
      yozuv += harf;
    }else{
      continue;
    }
  }

  print(yozuv);
  
}