import 'dart:io';

class Higher{
  int num;
  Higher(){
    this.num = int.parse(stdin.readLineSync());
  }
  void print_details(){
    var l1 = new List();
    while (num>0){
      int i = num % 10;
      l1.add(i);
      num = num ~/ 10;
    }

    l1.sort();
    
    int high = 0;
    for (int i=l1.length-1;i>=0;i--){
      high = high * 10 + l1[i];
    }
    print(high);
  }
}