import 'package:upper/upper.dart' as upper;
import 'dart:io';
void main(List<String> arguments) {
  stdout.writeln('Enter Your address');
  String address = stdin.readLineSync();
  print('Your Address in uppet case is:  ${address.toUpperCase()}!');
}
