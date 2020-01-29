import 'dart:io';
class payment
{
  void pay()
  {
    print('Please enter your country code for india press 1 for us press 2');
    int n = int.parse(stdin.readLineSync());
    print('plese enter the number of products');
    int a = int.parse(stdin.readLineSync());
    print('plese enter the cost of $a products');
    var x = List();
    double c;
    for(int i=0;i<a;i++)
    {
      x.add(int.parse(stdin.readLineSync()));
    }
    num sum = 0;
    for (num e in x) {
      sum += e;
    }
    if(n==1)
    {
      print('Total cost of your product in indian rs is $sum');
    }
    else{
      c=sum/71.2;
      print('Total cost of your product in US doller is $c');
    }
  }
}