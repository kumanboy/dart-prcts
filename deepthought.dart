import 'dart:io';

void main(List<String> args) {
  stdout.write("What is the Answer to the Great Question of Life, the Universe, and Everything?");

  String? quote = stdin.readLineSync();

  if(quote == "42" || quote == "forty-two" || quote == "forty two"){
    print("YES");
  }
  else{
    print("NO");
  }
}
