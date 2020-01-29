import 'dart:io';
class assen
{
  void add()
  {
    print('Enter the length of list');
    int n = int.parse(stdin.readLineSync());
    print('Enter the items to be sorted');
    var a = List();
    for (int i=0; i<n; i++){
      a.add(int.parse(stdin.readLineSync()));
   }
   a.sort();
   print('the shorted items are $a');
   }
}