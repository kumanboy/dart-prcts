import 'dart:io';

void main(List<String> args) {
  stdout.write("Ovqat narxini kiriting");

  String? ovqatNarxi = stdin.readLineSync();


  tipFoiz (foiz){
    stdout.write("necha foiz");

    foiz = int.parse(foiz);
  }
  String? foiz = stdin.readLineSync();

  double dollars = double.parse(ovqatNarxi!);
  var percent = tipFoiz(foiz);

  double tip = dollars * percent;

  print("leave :\$ ${tip}");
}
