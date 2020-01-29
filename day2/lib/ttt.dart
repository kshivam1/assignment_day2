import 'dart:io';
class ttt
{
  void tt(){

  List l=[1,2,3,4,5,6,7,8,9];
  void input(int a,String s)
  {
    l[a]='$s';
  }
  void check(l){
    if((l[1]==l[2])&&(l[2]==l[3]))
    {
      print('congtatulation ${l[1]} has won the match');exit(1);
    }
     if((l[4]==l[5])&&(l[5]==l[6]))
    {
      print('congtatulation ${l[4]} has won the match');exit(1);
    }
     if((l[7]==l[8])&&(l[8]==l[9]))
    {
      print('congtatulation ${l[7]} has won the match');exit(1);
    }
     if((l[1]==l[4])&&(l[4]==l[7]))
    {
      print('congtatulation ${l[1]} has won the match');exit(1);
    }
     if((l[2]==l[5])&&(l[5]==l[8]))
    {
      print('congtatulation ${l[2]} has won the match');exit(1);
    }
     if((l[3]==l[6])&&(l[6]==l[9]))
    {
      print('congtatulation ${l[3]} has won the match');exit(1);
    }
     if((l[1]==l[5])&&(l[5]==l[9]))
    {
      print('congtatulation ${l[1]} has won the match');exit(1);
    }
     if((l[3]==l[5])&&(l[5]==l[7]))
    {
      print('congtatulation ${l[3]} has won the match');exit(1);
    }
  }

    print('user 1 input your position');
    int n = int.parse(stdin.readLineSync());
    input(n,'x');
    check(l);
    print('user 2 input your position');
    int o = int.parse(stdin.readLineSync());
    input(o,'o');
    print(l);
    check(l);
     print('user 1 input your position');
    int c = int.parse(stdin.readLineSync());
    input(c,'x');
    check(l);
    print('user 2 input your position');
    int d = int.parse(stdin.readLineSync());
    input(d,'o');
    print(l);
    check(l);
     print('user 1 input your position');
    int e = int.parse(stdin.readLineSync());
    input(e,'x');
    check(l);
    print('user 2 input your position');
    int f = int.parse(stdin.readLineSync());
    input(f,'o');
    print(l);
    check(l);
     print('user 1 input your position');
    int g = int.parse(stdin.readLineSync());
    input(g,'x');
    check(l);
    print('user 2 input your position');
    int i = int.parse(stdin.readLineSync());
    input(i,'o');
    print(l);
    check(l);
     print('user 1 input your position');
    int j = int.parse(stdin.readLineSync());
    input(j,'x');
    print(l);
    check(l);
    print('match is deawn');
  
  }
}