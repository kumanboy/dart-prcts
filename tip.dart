import 'dart:io';

void main(List<String> args) {
  ovqatNarxi(){
    stdout.write("Ovqat narxini yozing1 : ");

    String? ovqatNarxi = stdin.readLineSync();

    String removeSign = ovqatNarxi!.replaceAll("\$", " ");

    double changeToDouble = double.parse(removeSign);

    return changeToDouble;
  }

  foizSora(){
    stdout.write("Foiz sora : ");

    String? foiz= stdin.readLineSync();

    String? removePercent = foiz!.replaceAll("%", "");

    int changedFoiz = int.parse(removePercent);

    return changedFoiz;
  }

  double dollar = ovqatNarxi();
  num? foiz = foizSora();
  var tip = (dollar * foiz)/100;
  print("Leave \$ ${tip.toStringAsFixed(2)}");
}