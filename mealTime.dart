import 'dart:io';

void main(List<String> args) {
  stdout.write("White Time is it? ");

  String? time =   stdin.readLineSync();
  
  if(time != null){
    double convertedTime = convert(time);
    if(convertedTime >= 7 && convertedTime<= 8){
      print("Breakfast");
    }
    else if(convertedTime >= 12 && convertedTime <= 13){
      print("Lunch");
    }
    else if(convertedTime >=18 && convertedTime <= 19){
      print("Dinner");
    }
  }
}

convert(time){
    List<String> ex= time!.split(":");  

    double x = double.parse(ex[0]),
    y = double.parse(ex[1]);

    time = x + y/60;

    return time;
  }