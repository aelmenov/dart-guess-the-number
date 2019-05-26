import 'dart:convert';
import 'dart:io';

bool compareInput(int random) {
  bool compareResult = false;

  print("Enter your number:");

  Encoding encoding = Encoding.getByName("UTF-8");
  String inputValue = stdin.readLineSync(encoding: encoding);
  int parsedValue = int.tryParse(inputValue);

  if (parsedValue != null && parsedValue == random) {
    compareResult = true;
  } else {
    print("\nDidn't guess :(\nTry again? [y/n]:");

    String agreement = stdin.readLineSync(encoding: encoding).trim().toLowerCase();

    compareResult = agreement == "y" ? compareInput(random) : false; 
  }

  return compareResult;
}