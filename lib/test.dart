import 'dart:io';
import 'dart:math';
void main() {
  var i = 0;
  var r = Random();
  var n =1;
  var answer = r.nextInt(100);
  var count=0;

  while(i<n){
    stdout.write('Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == null){
      n=1;
    }
    else if(answer > guess!){
      var m= guess;
      print("$m is TOO LOW! ▼");
      count++;
    }else if(answer < guess!){
      var m= guess;

      print("$m is TOO HIGHT! ▲ ");
      count++;
    }else if (guess == answer) {
      n=0;
      var m = guess;
      count++;

      print("$m is CORRECT ❤, total guesses $count");
    }
    else {
      n=1;
    }
  }
}