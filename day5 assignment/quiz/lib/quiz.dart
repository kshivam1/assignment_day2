import 'dart:io';
import 'dart:math';
class play_quiz
{
  Map country_capital;
  int chances;
  void start()
  {
    country_capital = {
      'Afghanistan': 'kabul','Australia': 'canberra','Bangladesh': 'dhaka','Belgium': 'brussels',
      'Bhutan': 'thimphu','Brazil': 'brasilia','Canada': 'ottawa','China': 'beijing',
      'Cuba': 'havana','Egypt': 'cairo','France': 'paris','India': 'new delhi','Iran': 'tehran',
      'Nepal': 'kathmandu','Netherlands': 'amsterdam','New Zealand': 'wellington',
      'Norway': 'oslo' };
    chances = 3;
    var win = false;
    var random = Random();
    var rand = random.nextInt(15);
   while(chances != 0 && win==false)
   {
      var count = 0;
      String country;
      country_capital.forEach((key, value)=>{
        if(++count == rand)
        {
          country = key
        }
        });
      
       print('Enter capital of ${country}: ');
      var capital = stdin.readLineSync();
      if(capital == country_capital[country]){
        win= true;
      }
      else
      {
        chances--;
        print('Wrong!!!, you have ${chances} chance left');
      }
    }
    if(win){
      print('Congratulation! you wun the match');
    }
    stdout.write('Do you want to replay?\npress 1 for yes\npress 2 for no');
    int n = int.parse(stdin.readLineSync());
    if(n == '1')
    {
      chances = 3;
      start();
    }
    else
    {
      print('thank you for playing!!!');
    }
  }
}