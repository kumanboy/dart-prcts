import 'dart:io';

void main(List<String> args) {
  stdout.write("Input: ");  
  String? product = stdin.readLineSync();

  Map<String,int> products = {
    'apple' : 130,
    'banana' : 110,
    'avocado':50,
    'grapes':90,
    'lemon':15
  };

  products.forEach((key, value) {
    if(key == product){
      print(value);
    }
  });

  
}