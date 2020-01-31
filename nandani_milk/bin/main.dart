import 'package:nandani_milk/nandani_milk.dart' as nandani_milk;
import 'dart:io';

import '../lib/nandani_milk.dart';

void main(List<String> arguments) {
   nandani n=nandani();
   int milkclass,order,spoiledmilk;
   List packet=List();   
   print('Enter the total number of order:');
   order=int.parse(stdin.readLineSync());
   print('How many classes of milk are available:');
   milkclass=int.parse(stdin.readLineSync());
   print('Enter the number of packets in each class');
   for(int i=0;i<milkclass;i++)
   {
     packet.add(int.parse(stdin.readLineSync()));
   }
   print('how many packets are spoiled');
   spoiledmilk=int.parse(stdin.readLineSync());
   n.consumed(milkclass,packet,spoiledmilk,order);
}

