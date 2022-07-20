import 'dart:io';

void main() {
  String str1, str2;
  print("input string 1:");
  str1 = stdin.readLineSync()!;
  print("input string 2:");
  str2 = stdin.readLineSync()!;
  print("string 1 + string 2: ${str1 + str2}");
}
