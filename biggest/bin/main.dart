import 'package:biggest/biggest.dart' as biggest;
import 'dart:io';
void main(List<String> arguments) { 
  stdout.writeln('Enter the number');
  int n = int.parse(stdin.readLineSync());
  var a= new List();
   while (n>0){
      int i = n % 10;
      a.add(i);
      n = n ~/ 10;
    }
     a.sort();
    
    int h = 0;
    for (int i=a.length-1;i>=0;i--){
      h = h * 10 + a[i];
    }
    print('the highest number is');
    print(high);
}
