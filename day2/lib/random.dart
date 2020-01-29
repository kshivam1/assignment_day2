import 'dart:math';
class toss
{
  void to()
  {
    Random random = new Random();
    int randomNumber = random.nextInt(2)+1;
    print(randomNumber);
  }
}