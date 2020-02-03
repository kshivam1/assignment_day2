// import 'dart:io';
// class unversity extends person
// {
//   String name,email;
//   int num;
//   void uni()
//   {
//     print('our services are\n');
//     print('press 1 for branches\npress 2 for courses\npress 3 for student\npress 4 for professor');
//     int n = int.parse(stdin.readLineSync());
//     switch (n) {
//       case 1: branch b=branch();
//               b.show_details();
//         break;
//       case 2:course c=course();
//             c.show_details();
//         break;
//       case 3:student s=student();
//             s.show();
//         break;
//       case 4:proffesor p=proffesor();
//             p.prof();
//         break;
//       default: print('Please enter a valid number');
//     }
//   }
//   void get_details()
//   {
//       print('Please enter your name:');
//       name = stdin.readLineSync();
//       print('Please enter your phone number:');
//       num = int.parse(stdin.readLineSync());
//       print('Please enter your email_id:');
//       email = stdin.readLineSync();
//   }
//   void show_details()
//   {
//     print('your name is $name');
//     print('your number is $num');
//     print('your number is $email');
//   }
// }
// class branch extends unversity
// {
//   void show_details()
//   {
//     print('We have the follwing branches:\n1.Engineering\n2.Medical\n3.BBA\n4.BCom');
//     print('plese enter the branch no. you want the information');
//     int n = int.parse(stdin.readLineSync());
//     switch(n)
//     {
//       case 1: print('welcome to Engineering......');
//         break;
//       case 2:print('welcome to Medical......');
//         break;
//       case 3:print('welcome to BBA......');
//         break;
//       case 4:print('welcome to BCom......');
//         break;
//       default: print('SORRY!!! requested branch not available');
//     }
//   }
// }
// class course extends unversity
// {
//   void show_details()
//   {
//     print('We have the follwing cources:\n1.CSE\n2.ISE\n3.ECE\n4.EEE');
//     print('plese enter the cource no. you want the information');
//     int n = int.parse(stdin.readLineSync());
//     switch(n)
//     {
//       case 1: print('welcome to computer science and engineering......');
//         break;
//       case 2:print('welcome to information science and engineering......');
//         break;
//       case 3:print('welcome to electronics and communication engineering......');
//         break;
//       case 4:print('welcome to electrical engineering......');
//         break;
//       default: print('SORRY!!! requested branch not available');
//     }
//   }
// }
// class student extends unversity
// {
//     void show()
//     {
//       print('Press 1 for existing student\nPress 2 for applying');
//       int n = int.parse(stdin.readLineSync());
//       switch(n){
//         case 1: print('please enter your student_id');
//                 int a = int.parse(stdin.readLineSync());
//                 print('Hi! welcome to oxford university!');
//                 get_details();
//                 address aa=address();
//                 aa.get_details();
//                 show_details();
//                 aa.show_details();
//                 break;
//         case 2:print('Plese enter you 12th marks');
//               int marks = int.parse(stdin.readLineSync());
//               if(marks<60)
//               {
//                 print('We are really sorry, you are not eligibe');
//               }
//               else
//               {
//                 print('Please enter your details to register');
//                 get_details();
//                 address aa=address();
//                 aa.get_details();
//                 print('your entered details is:');
//                 show_details();
//                 aa.show_details();
//               }
//           break;
//         default: print('invalid number!!!');
//       }
//     }
// }
// class proffesor extends unversity
// {
//   void prof()
//   {
//     print('please enter your id to login');
//     int id = int.parse(stdin.readLineSync());
//     print('please enter your password to login');
//     int pass = int.parse(stdin.readLineSync());
//     if(pass==1234)
//     {
//       switch(id)
//       {
//         case 1: print('Your salary is 350000/month');
//           break;
//         case 2: print('Your salary is 450000/month');
//           break;
//         case 3: print('Your salary is 250000/month');
//           break;
//         case 4:print('Your salary is 150000/month');
//           break;
//         default: print('Invalid id!!!');
//       }
//     }
//     else
//     {
//       print('invalid password');
//     }
//   }
// }
// class address
// {
//   String street,city,state,country;
//   int pincode;

//   void get_details()
//   {
//       print('Please enter your street:');
//       street = stdin.readLineSync();
//       print('Please enter your city:');
//       city = stdin.readLineSync();
//       print('Please enter your state:');
//       state = stdin.readLineSync();
//       print('Please enter your pincode:');
//       pincode = int.parse(stdin.readLineSync());
//       print('Please enter your country:');
//       country = stdin.readLineSync();
//   }
//   void show_details()
//   {
//     print('your street is $street');
//     print('your city is $city');
//     print('your state is $state');
//     print('your pincode is $pincode');
//     print('your country is $country');
//   }
// }
// class person
// {
//   void per()
//   {
//     print('Press 1 to view university detail, 2 for others');
//     int b = int.parse(stdin.readLineSync());
//     if(b==1)
//     {
//       unversity u=unversity();
//       u.uni();
//       exit(0);
//     }
//     print('Are you a student or a proffesor.\nPress 1 for student.\nPress 2 for proffesor');
//     int n = int.parse(stdin.readLineSync());
//     switch(n)
//     {
//       case 1: print('please mention the university you belong to:');
//               print('press 1 for oxford\npress 2 for other');
//               int a = int.parse(stdin.readLineSync());
//               switch(a)
//               {
//                 case 1: print('WELCOME TO THE OXFORD UIVERSITY\n\n');
//                         student s=student();
//                         s.show();
//                         break;
//                 case 2: print('Please enter your university name');
//                         String s = stdin.readLineSync();
//                         print('Welcome to $s university');
//                         student x=student();
//                         x.show();
//                         break;
//                 default: print('INVALID CHOICE!!!');
//               }
//         break;
//       case 2: print('please mention the university you belong to:');
//               print('press 1 for oxford\npress 2 for other');
//               int a = int.parse(stdin.readLineSync());
//               switch(a)
//               {
//                 case 1: print('WELCOME TO THE OXFORD UIVERSITY\n\n');
//                         proffesor p=proffesor();
//                         p.prof();
//                         break;
//                 case 2: print('Please enter your university name');
//                         String s = stdin.readLineSync();
//                         print('Welcome to $s university');
//                         proffesor p=proffesor();
//                         p.prof();
//                         break;
//                 default: print('INVALID CHOICE!!!');
//               }
//         break;
//       default: print('Invalid choice!!!');
//     }
//   }
// }