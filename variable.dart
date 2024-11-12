import 'dart:io';

void main() {
  stdout.write('Please enter your name: '); // Displays the prompt to the user
  String? name = stdin.readLineSync(); // Reads user input from the console



  if (name!.isNotEmpty) {
    print('Hello, ${name.toLowerCase()}! Welcome to Dart programming.');
  } else {
    print('You did not enter a name.');
  }
}
