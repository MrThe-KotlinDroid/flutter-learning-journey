void main() {
  //Loops
  // for (var i = 0; i < 5; i++) {
  //   print(i);
  //   //break
  //   //continue
  // }

  //Let's take a list and iterate over it
  List<int> scores = [10, 20, 45, 82, 93, 70];

  for (int score in scores) {
    print("the score is $score");
  }

  //With a condition
  for (int score in scores) {
    if (score > 50) {
      print("the score is $score");
    } else {
      print("score not high enough");
    }
  }

  //where method
  for (int score in scores.where((s) => s > 50)) { // likwise ==, >=, <= and etc. can be used
    print("the score is $score");
  }

  //while
  // int i = 0;
  // while (i < 5) {
  //   print(i);
  //   i++;
  // }

  // //do-while loop
  // i = 0;
  // do {
  //   print(i);
  // } while (i < 5);
}
