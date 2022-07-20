import 'dart:ffi';
import 'dart:io';

void main() {
  String str;
  print("input string:");
  str = stdin.readLineSync()!;

  print("Uppercase: ${str.toLowerCase()}");
  print("Lowercase: ${str.toUpperCase()}");
}
