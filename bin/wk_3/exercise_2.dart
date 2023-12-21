import "dart:math";
import "dart:io";

void main() {
  int randomNumber = Random().nextInt(100) + 1;
  int guessCount = 0;

  while (true) {
    guessCount++;
    stdout.write("Guess number between 1-100 : ");
    String? input = stdin.readLineSync();
    if (input != null) {
      int guessNumber = int.parse(input);

      if (guessNumber == randomNumber) {
        print("exactly right you has guess for $guessCount times!");
        break;
      }

      if (guessNumber > randomNumber) {
        print("too high");
      } else {
        print("too low");
      }
    }
  }
}
