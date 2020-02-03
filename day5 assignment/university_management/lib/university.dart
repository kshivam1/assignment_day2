//final version
import 'dart:io';
abstract class person
{
  void get_details(){}
  void show_details(){}
}
class student implements person
{
  @override
  void get_details() {
    print('Hi! Please enter your university code to login or enroll');
    print('Press 1 for IIT\nPress 2 for NIT\nPress 3 for others');
    int n = int.parse(stdin.readLineSync());
    switch(n)
    {
      case 1: print('Welcome to IIT');
              print('Press 1 to login\nPress 2 to register');
              int a = int.parse(stdin.readLineSync());
              switch(a)
              {
                case 1: print('Welcome to login page!');
                        print('Please enter your login id:');
                        int id = int.parse(stdin.readLineSync());
                        print('please enter your password to login');
                        int pass = int.parse(stdin.readLineSync());
                        if(pass==1234)
                        {
                            university u=university();
                            u.uni();
                        }
                        else
                        {
                          print('Invalid Password!!!Try again');
                        }
                        break;
                case 2: print('Welcome to registration process of IIT');
                        print('Plese enter you 12th marks');
                        int marks = int.parse(stdin.readLineSync());
                        if(marks<90)
                        {
                           print('We are sorry, you are not eligibe');
                        }
                        else
                        {
                          address a=address();
                          print('welcome to registration process');
                          a.get_details();
                          print('Registered sucessfully!!!\nyour derails are:\n');
                          a.show_details();
                        }
              }
        break;
      case 2: print('Welcome to NIT');
              print('Press 1 to login\nPress 2 to register');
              int a = int.parse(stdin.readLineSync());
              switch(a)
              {
                case 1: print('Welcome to login page!');
                        print('Please enter your login id:');
                        int id = int.parse(stdin.readLineSync());
                        print('please enter your password to login');
                        int pass = int.parse(stdin.readLineSync());
                        if(pass==1234)
                        {
                            university u=university();
                            u.uni();
                        }
                        else
                        {
                          print('Invalid Password!!!Try again');
                        }
                        break;
                case 2: print('Welcome to registration process of NIT');
                        print('Plese enter you 12th marks');
                        int marks = int.parse(stdin.readLineSync());
                        if(marks<70)
                        {
                           print('We are sorry, you are not eligibe');
                        }
                        else
                        {
                          address a=address();
                          print('welcome to registration process');
                          a.get_details();
                          print('Registered sucessfully!!!\nyour derails are:\n');
                          a.show_details();
                        }
              }
        break;
      case 3: print('Welcome to Others');
              print('Press 1 to login\nPress 2 to register');
              int a = int.parse(stdin.readLineSync());
              switch(a)
              {
                case 1: print('Welcome to login page!');
                        print('Please enter your login id:');
                        int id = int.parse(stdin.readLineSync());
                        print('please enter your password to login');
                        int pass = int.parse(stdin.readLineSync());
                        if(pass==1234)
                        {
                            university u=university();
                            u.uni();   
                        }
                        else
                        {
                          print('Invalid Password!!!Try again');
                        }
                        break;
                case 2: print('Welcome to registration process of Other');
                        print('Plese enter you 12th marks');
                        int marks = int.parse(stdin.readLineSync());
                        if(marks<50)
                        {
                           print('We are sorry, you are not eligibe');
                        }
                        else
                        {
                          address a=address();
                          print('welcome to registration process');
                          a.get_details();
                          print('Registered sucessfully!!!\nyour derails are:\n');
                          a.show_details();
                        }
              }
        break;
      default:print('invalid choice!!!');
    }
  }

  @override
  void show_details() {
    // TODO: implement show_details
  }

}
class professor implements person
{
  @override
  void get_details() 
  {
    print('Welcome Professor!!!');
    print('Hi! Please enter your university code to login or enroll');
    print('Press 1 for IIT\nPress 2 for NIT\nPress 3 for others');
    int n = int.parse(stdin.readLineSync());
    switch(n)
    {
      case 1: print('Welcome to IIT');
              print('Press 1 to login\nPress 2 to register');
              int a = int.parse(stdin.readLineSync());
              switch(a)
              {
                case 1: print('Welcome to login page!');
                        print('Please enter your login id:');
                        int id = int.parse(stdin.readLineSync());
                        print('please enter your password to login');
                        int pass = int.parse(stdin.readLineSync());
                        if(pass==1234)
                        {
                            university u=university();
                            u.uni();
                            print('press 1 for salary details');
                            int n = int.parse(stdin.readLineSync());
                            if(n==1)
                            {
                              print('your salary is 50000');
                            }
                            else{
                              print('thank you! visit again');
                            }
                        }
                        else
                        {
                          print('Invalid Password!!!Try again');
                        }
                        break;
                case 2: print('Welcome to registration process of IIT');
                        print('Plese enter your exprience in year');
                        int marks = int.parse(stdin.readLineSync());
                        if(marks<10)
                        {
                           print('We are sorry, you are not eligibe');
                        }
                        else
                        {
                          address a=address();
                          print('welcome to registration process');
                          a.get_details();
                          print('Registered sucessfully!!!\nyour derails are:\n');
                          a.show_details();
                        }
              }
        break;
      case 2: print('Welcome to NIT');
              print('Press 1 to login\nPress 2 to register');
              int a = int.parse(stdin.readLineSync());
              switch(a)
              {
                case 1: print('Welcome to login page!');
                        print('Please enter your login id:');
                        int id = int.parse(stdin.readLineSync());
                        print('please enter your password to login');
                        int pass = int.parse(stdin.readLineSync());
                        if(pass==1234)
                        {
                            university u=university();
                            u.uni();
                            print('press 1 for salary details');
                            int n = int.parse(stdin.readLineSync());
                            if(n==1)
                            {
                              print('your salary is 50000');
                            }
                            else{
                              print('thank you! visit again');
                            }
                        }
                        else
                        {
                          print('Invalid Password!!!Try again');
                        }
                        break;
                case 2: print('Welcome to registration process of NIT');
                        print('Plese enter your exprience in years');
                        int marks = int.parse(stdin.readLineSync());
                        if(marks<7)
                        {
                           print('We are sorry, you are not eligibe');
                        }
                        else
                        {
                          address a=address();
                          print('welcome to registration process');
                          a.get_details();
                          print('Registered sucessfully!!!\nyour derails are:\n');
                          a.show_details();
                        }
              }
        break;
      case 3: print('Welcome to Others');
              print('Press 1 to login\nPress 2 to register');
              int a = int.parse(stdin.readLineSync());
              switch(a)
              {
                case 1: print('Welcome to login page!');
                        print('Please enter your login id:');
                        int id = int.parse(stdin.readLineSync());
                        print('please enter your password to login');
                        int pass = int.parse(stdin.readLineSync());
                        if(pass==1234)
                        {
                            university u=university();
                            u.uni();  
                            print('press 1 for salary details');
                            int n = int.parse(stdin.readLineSync());
                            if(n==1)
                            {
                              print('your salary is 50000');
                            }
                            else{
                              print('thank you! visit again');
                            } 
                        }
                        else
                        {
                          print('Invalid Password!!!Try again');
                        }
                        break;
                case 2: print('Welcome to registration process of Other');
                        print('Plese enter your exprience in years');
                        int marks = int.parse(stdin.readLineSync());
                        if(marks<3)
                        {
                           print('We are sorry, you are not eligibe');
                        }
                        else
                        {
                          address a=address();
                          print('welcome to registration process');
                          a.get_details();
                          print('Registered sucessfully!!!\nyour derails are:\n');
                          a.show_details();
                        }
              }
        break;
      default:print('invalid choice!!!');
    }
  }

  @override
  void show_details() {
    // TODO: implement show_details
  }

}
class details 
{
  int n,n_person,n_proffessor;
  void person_detail()
  {
    print('Enter the total number of person');
    n=int.parse(stdin.readLineSync());
    print('Please enter the total number of student');
    n_person=int.parse(stdin.readLineSync());
    n_proffessor=n-n_person;
    print('Total number of proffessor: $n_proffessor');

  }
}
class university
{
  void uni()
  {
    print('welcome to the University');
    print('press 1 to view different branches:');
    int n=int.parse(stdin.readLineSync());
    if(n==1)
    {
      branch b=branch();
      b.branch_details();
    }
    else
    {
      print('Invalid choice!!!');
    }
  }
}
class branch extends university
{
   void branch_details()
   {
     print('We have the follwing branches:\n1.Bangalore\n2.Chennai\n3.Mumbai\n4.Kolkata');
     print('plese enter the branch no. you want the information');
     int n = int.parse(stdin.readLineSync());
     course c=course();
     switch(n)
     {
      case 1: print('welcome to Bangalore branch......');
              c.course_details();
         break;
      case 2:print('welcome to Chennai branch......');
             c.course_details();
         break;
      case 3:print('welcome to Mumbai branch......');
             c.course_details();
         break;
      case 4:print('welcome to Kolkata branch......');
             c.course_details();
         break;
      default: print('SORRY!!! requested branch not available');
     }
   }
}
class course extends branch 
{
  void course_details()
  {
    print('We have the following cources available');
    print('We have the follwing Cources :\n1.Engineering\n2.Medical\n3.BBA\n4.BCom');
    print('plese enter the branch no. you want the information');
    int n = int.parse(stdin.readLineSync());
    switch(n)
    {
      case 1: print('welcome to Engineering......');
        break;
      case 2:print('welcome to Medical......');
        break;
      case 3:print('welcome to BBA......');
        break;
      case 4:print('welcome to BCom......');
        break;
      default: print('SORRY!!! requested branch not available');
    }
  }
}
class address implements person
{
  String street,city,state,country;
  int pincode;
  String name,email;
  int num;
  @override
  void get_details() 
  {
    print('Please enter your name:');
    name = stdin.readLineSync();
    print('Please enter your phone number:');
    num = int.parse(stdin.readLineSync());
    print('Please enter your email_id:');
    email = stdin.readLineSync();
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
  @override
  void show_details() 
  {
    print('your name is $name');
    print('your number is $num');
    print('your email is $email');  
    print('your street is $street');
    print('your city is $city');
    print('your state is $state');
    print('your pincode is $pincode');
    print('your country is $country');
  }
}