
import 'dart:math';

import '../lib/compare-input.dart';

void main() {
  int random = new Random.secure().nextInt(20);

  print("Welcome to the \"Guess The Number\" game!\nRules are simple — you have to guess a number between 0 to 20.\n");

  if (compareInput(random)) {
    print("Congratulations! You win.");
  } else {
    print("Sorry, you lose. Maybe next time better luck?");
  }
}