import 'dart:io';
class nandani
{
  void get_data()
  {
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
     consumed(milkclass,packet,spoiledmilk,order);
   }
   void consumed(milkclass,packet,spoiledmilk,order)
   {
     packet.sort();
     for(int i=milkclass-1;i>=0;i--)
      { 
        
        if(packet[i]<order)
        {
          print('${packet[i]}\t${packet[i]-spoiledmilk}\t$spoiledmilk\n');
          order=((order-packet[i])+spoiledmilk);
        }
       else
        {
            print('${packet[i]}\t${order}\t$spoiledmilk\n');
            order=0;
        }
        if(spoiledmilk<packet[i])
        {
          spoiledmilk=0;
        }
        else
        {
          spoiledmilk=spoiledmilk-packet[i];
        }
      }
    if(order==0)
    {
      print('Thank You!, your order is accepted');
    }
    else
    {
      print('Sorry, cannot deliver your requested item, $order items remain');
    }
  }
}