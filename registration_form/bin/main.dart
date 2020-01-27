import 'package:registration_form/registration_form.dart' as registration_form;
import 'dart:io';
void main(List<String> arguments) {
  stdout.writeln('Enter Your name');
  String name = stdin.readLineSync();
  stdout.writeln('Enter Your age');
  String age = stdin.readLineSync();
  stdout.writeln('Enter Your phone number');
  String phone = stdin.readLineSync();
  stdout.writeln('Enter Your email');
  String email = stdin.readLineSync();
  print('You name is: $name');
  print('You age is: $age');
  print('You phone is: $phone');
  print('You email is: $email');
}
