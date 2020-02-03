import 'dart:io';
class booking
{
  String name,email;
  int num;
  
  void get_details()
  {
      print('Please enter your name:');
      name = stdin.readLineSync();
      print('Please enter your phone number:');
      num = int.parse(stdin.readLineSync());
      print('Please enter your email_id:');
      email = stdin.readLineSync();
  }
  void show_details()
  {
    print('your name is $name');
    print('your number is $num');
    print('your number is $email');
  }
  void book()
  {
    print('Please choose your booking platform:\n press 1 for airline \n press 2 for bus \n press 3 for railway');
    int n = int.parse(stdin.readLineSync());
    switch(n)
    {
      case 1: airline a=airline();
            a.details();
        break;
      case 2: bus a=bus();
            a.details();
        break;
      case 3:railway a=railway();
            a.details();
        break;
      default: print('plese enter a valid number');
    }
  }
}
class airline extends booking
{
  void details()
  {
    print('WELCOME TO AIRLINE BOOKING');
    get_details();
    customer c=customer();
    c.get_details();
    print('Thankyou for choosing airline services');
    print('Your detils are as follow');
    show_details();
    c.show_details();

  }
}
class bus extends booking
{
  void details()
  {
    customer c=customer();
    get_details();
    c.get_details();
    print('Thankyou for choosing bus services');
    print('Your detils are as follow');
    show_details();
    c.show_details();
  }
}
class railway extends booking
{
  void details()
  {
    get_details();
    customer c=customer();
    c.get_details();
    print('Thankyou for choosing railway services');
    print('Your detils are as follow');
    show_details();
    c.show_details();
  }
}
class customer
{
  String street,city,state,country;
  int pincode;

  void get_details()
  {
      print('Please enter your street:');
      street = stdin.readLineSync();
      print('Please enter your city:');
      city = stdin.readLineSync();
      print('Please enter your state:');
      state = stdin.readLineSync();
      print('Please enter your pincode:');
      pincode = int.parse(stdin.readLineSync());
      print('Please enter your country:');
      country = stdin.readLineSync();
  }
  void show_details()
  {
    print('your street is $street');
    print('your city is $city');
    print('your state is $state');
    print('your pincode is $pincode');
    print('your country is $country');
  }
}