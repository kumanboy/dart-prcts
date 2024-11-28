import 'dart:io';

void main(List<String> args) {
  stdout.write("Input: ");

  String? meal = stdin.readLineSync();

  Map<String,double> menu ={
    "Baja Taco": 4.25,
    "Burrito": 7.50,
    "Bowl": 8.50,
    "Nachos": 11.00,
    "Quesadilla": 8.50,
    "Super Burrito": 8.50,
    "Super Quesadilla": 9.50,
    "Taco": 3.00,
    "Tortilla Salad": 8.00
  };

  menu.forEach((key, value) {
    if(key == meal){
      print("\$${value}");
    }
   });
}