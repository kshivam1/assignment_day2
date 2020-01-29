import 'dart:io';
class branch
{
  String branch_name='ISE';
  void timezone()
  {
    stdout.writeln('Enter the time in railway format example 1345 which bacically means 1:45 pm');
    int n = int.parse(stdin.readLineSync());
    if(n>=0600 && n<=1800)
    {
        print('University belongs to the in indian time zone ');
        print('list of available universities are');
        print('1. IIT');
        print('2. NIT');
    }
    else{
        print('University belongs to the in us time zone ');
        print('list of available universities are');
        print('1. OXFORD');
        print('2. ABC');
    }
  }
}