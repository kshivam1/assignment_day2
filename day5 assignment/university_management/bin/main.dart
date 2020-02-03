import 'package:university_management/university.dart';
import 'dart:io';

void main(List<String> arguments) {
  // print('WELCOME TO THE OXFORD UIVERSITY\n\n');
  // unversity u=unversity();
  // u.uni();
  // person p=person();
  // p.per();
  professor p=professor();
  student s=student();
  details d=details();
  d.person_detail();
  print('Are you a student or a proffesor.\nPress 1 for student.\nPress 2 for proffesor');
  int n = int.parse(stdin.readLineSync());
  switch(n)
  {
    case 1: s.get_details();
      break;
    case 2:p.get_details();
      break;
    default: print('Invalid choice!!!');
  }
}
