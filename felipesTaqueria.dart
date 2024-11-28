import 'dart:io';
void main(List<String> args) {
  double total = 0;
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

  Map<String,double> toLowercase = {};

  menu.forEach((key, value) {
    toLowercase[key.toLowerCase()] = value;
  });
  
  while(true){
    stdout.write("Input: ");

  String meal = stdin.readLineSync() ?? "";

  String userPrompt = meal.toLowerCase();

 
  toLowercase.forEach((key, value) {
    if(key == userPrompt){
      print("Meal cost\$${value}");
      total+=value;
      print("Total cost \$${total}");
    }
   });
  }
  
}