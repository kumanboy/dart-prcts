import 'dart:io';

void main(List<String> args) {
  stdout.write("Enter vanity plate: ");
  String? plate = stdin.readLineSync();

  if (plate == null || plate.isEmpty) {
    print("Invalid input. Please enter a valid vanity plate.");
    return;
  }

  // Validate plate length (must be between 2 and 6 characters)
  if (plate.length < 2 || plate.length > 6) {
    print("Invalid plate: Length must be between 2 and 6 characters.");
    return;
  }

  // Check if the first two characters are letters
  if (plate[0].compareTo('A') < 0 || plate[0].compareTo('Z') > 0) {
    print("Invalid plate: The first two characters must be letters.");
    return;
  }
  if (plate[1].compareTo('A') < 0 || plate[1].compareTo('Z') > 0) {
    print("Invalid plate: The first two characters must be letters.");
    return;
  }

  // Check for numbers in the middle
  String lettersPart = "";
  String numbersPart = "";
  bool numbersStarted = false;

  for (int i = 0; i < plate.length; i++) {
    if (isDigit(plate[i])) {
      numbersStarted = true;
      numbersPart += plate[i];
    } else {
      if (numbersStarted) {
        print("Invalid plate: Numbers must only be at the end of the plate.");
        return;
      }
      lettersPart += plate[i];
    }
  }

  // Ensure no number starts with '0'
  if (numbersPart.isNotEmpty && numbersPart[0] == '0') {
    print("Invalid plate: Numbers cannot start with '0'.");
    return;
  }

  // If all checks pass
  print("Valid plate: $plate");
}

// Function to check if a character is a letter
bool isLetter(String char) {
  return (char.compareTo('A') >= 0 && char.compareTo('Z') <= 0) || (char.compareTo('a') >= 0 && char.compareTo('z') <= 0);
}

// Function to check if a character is a digit
bool isDigit(String char) {
  return char.compareTo('0') >= 0 && char.compareTo('9') <= 0;
}
