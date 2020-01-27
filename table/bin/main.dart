import 'package:table/table.dart' as table;
import 'dart:io';
void main(List<String> arguments) {
  stdout.writeln('Enter the number');
  int n = int.parse(stdin.readLineSync());
  print('table is');
  table.calculate(n);
}
