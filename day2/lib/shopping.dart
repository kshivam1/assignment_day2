import 'dart:io';
import 'dart:math';
class shopping
{
  void shop()
  {
    print('please enter the number of queues');
    int n = int.parse(stdin.readLineSync());
    print('please enter the number of people in each queue');
    var x = List();
    for(int i=0;i<n;i++)
    {
      x.add(int.parse(stdin.readLineSync()));
    }
    var l = x.map((element)=>element).toList();
    l.sort();
    int s = x.indexOf(l[0]);
    print('Enter the ${s + 1}th queue');
    
  }
}