import 'dart:io';

void main() {
  // Prompt the user for input
  stdout.write("Enter a camelCase variable: ");
  String camelCase = stdin.readLineSync() ?? "";

  String snakeCase = convertToSnakeCase(camelCase);
  print("Snake case: $snakeCase");
}

String convertToSnakeCase(String camelCase) {
  StringBuffer snakeCaseBuffer = StringBuffer();

  for (int i = 0; i < camelCase.length; i++) {
    String char = camelCase[i];

    // Check if the character is uppercase
    if (char.toUpperCase() == char && char.toLowerCase() != char) {
      // Add an underscore before the uppercase letter, but not at the start
      if (i != 0) {
        snakeCaseBuffer.write('_');
      }
      snakeCaseBuffer.write(char.toLowerCase());
    } else {
      snakeCaseBuffer.write(char);
    }
  }

  return snakeCaseBuffer.toString();
}
