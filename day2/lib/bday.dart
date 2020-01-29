import 'dart:io';
class bday
{
  void bd()
  {
    stdout.writeln('enter the no. of chocolates in the packet');
    int a = int.parse(stdin.readLineSync());
    if(a%31==0)
    {
      print('yes,you can buy this packet');
    }
    else
    {
      print('no,you cant buy this packet');
    }
  }
}